# -*- encoding: utf-8 -*-
# stub: refinerycms-wymeditor 1.0.6 ruby lib

Gem::Specification.new do |s|
  s.name = "refinerycms-wymeditor"
  s.version = "1.0.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Philip Arndt"]
  s.date = "2015-01-25"
  s.description = "This extension adds WYMeditor support to Refinery CMS for visual editing."
  s.email = "info@refinerycms.com"
  s.homepage = "http://refinerycms.com"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "WYMeditor support for Refinery CMS"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<refinerycms-core>, [">= 3.0.0", "~> 3.0"])
    else
      s.add_dependency(%q<refinerycms-core>, [">= 3.0.0", "~> 3.0"])
    end
  else
    s.add_dependency(%q<refinerycms-core>, [">= 3.0.0", "~> 3.0"])
  end
end
