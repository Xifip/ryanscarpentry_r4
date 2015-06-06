module Refinery
  module Jobs
    class JobsController < ::ApplicationController

      before_action :find_all_jobs
      before_action :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @job in the line below:
        present(@page)
      end

      def show
        @job = Job.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @job in the line below:
        present(@page)
      end

    protected

      def find_all_jobs
        @jobs = Job.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/jobs").first
      end

    end
  end
end
