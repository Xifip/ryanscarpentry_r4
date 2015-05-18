require 'fog/core'
require 'fog/xml'

module Fog
  module XenServer
    class InvalidLogin < Fog::Errors::Error; end
    class NotFound < Fog::Errors::Error; end
    class RequestFailed < Fog::Errors::Error; end
    class HostIsSlave < Fog::Errors::Error
      attr_reader :master_ip

      def initialize(master_ip)
        @master_ip = master_ip
      end

    end

    extend Fog::Provider

    service(:compute, 'Compute')

    class Connection
      require 'xmlrpc/client'
      attr_reader :credentials

      def initialize(host, timeout)
        @factory = XMLRPC::Client.new(host, '/')
        @factory.set_parser(NokogiriStreamParser.new)
        @factory.timeout = timeout
      end

      def authenticate( username, password )
        response = @factory.call('session.login_with_password', username.to_s, password.to_s)
        if response['Status'] == 'Failure'
          if response['ErrorDescription'][0] == 'HOST_IS_SLAVE'
            master_ip = response['ErrorDescription'][1]
            raise Fog::XenServer::HostIsSlave.new(master_ip)
          else
            raise Fog::XenServer::InvalidLogin.new
          end
        end
        @credentials = response["Value"]
      end

      def request(options, *params)
        begin
          parser   = options.delete(:parser)
          method   = options.delete(:method)

          if params.empty?
            response = @factory.call(method, @credentials)
          else
            if params.length.eql?(1) and params.first.is_a?(Hash)
              response = @factory.call(method, @credentials, params.first)
            elsif params.length.eql?(2) and params.last.is_a?(Array)
              response = @factory.call(method, @credentials, params.first, params.last)
            else
              response = eval("@factory.call('#{method}', '#{@credentials}', #{params.map {|p|  p.is_a?(String) ? "'#{p}'" : p}.join(',')})")
            end
          end
          raise RequestFailed.new("#{method}: " + response["ErrorDescription"].to_s) unless response["Status"].eql? "Success"
          if parser
            parser.parse( response["Value"] )
            response = parser.response
          end

          response
        end
      end
    end

    class NokogiriStreamParser < XMLRPC::XMLParser::AbstractStreamParser
      def initialize
        require 'nokogiri/xml/sax/document'
        require 'nokogiri/xml/sax/parser'

        @parser_class = Class.new(Nokogiri::XML::SAX::Document) do

          include XMLRPC::XMLParser::StreamParserMixin

          alias_method :start_element, :startElement
          alias_method :end_element,   :endElement
          alias_method :characters,    :character
          alias_method :cdata_block,   :character

          def parse(str)
            Nokogiri::XML::SAX::Parser.new(self).parse(str)
          end

        end
      end
    end
  end
end
