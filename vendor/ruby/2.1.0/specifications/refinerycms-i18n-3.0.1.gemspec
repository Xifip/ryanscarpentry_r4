# -*- encoding: utf-8 -*-
# stub: refinerycms-i18n 3.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "refinerycms-i18n"
  s.version = "3.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Philip Arndt", "U\u{123}is Ozols"]
  s.date = "2015-02-18"
  s.description = "i18n logic extracted from Refinery CMS, for Refinery CMS."
  s.email = "info@refinerycms.com"
  s.homepage = "http://refinerycms.com"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0")
  s.rubygems_version = "2.2.2"
  s.summary = "i18n logic for Refinery CMS."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<routing-filter>, [">= 0.4.0"])
      s.add_runtime_dependency(%q<rails-i18n>, ["~> 4.0.1"])
    else
      s.add_dependency(%q<routing-filter>, [">= 0.4.0"])
      s.add_dependency(%q<rails-i18n>, ["~> 4.0.1"])
    end
  else
    s.add_dependency(%q<routing-filter>, [">= 0.4.0"])
    s.add_dependency(%q<rails-i18n>, ["~> 4.0.1"])
  end
end
