# -*- encoding: utf-8 -*-
# stub: refinerycms-settings 3.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "refinerycms-settings"
  s.version = "3.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Philip Arndt", "U\u{123}is Ozols"]
  s.date = "2014-12-04"
  s.description = "Adds programmer creatable, user editable settings."
  s.email = "info@refinerycms.com"
  s.homepage = "http://refinerycms.com"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Settings engine for Refinery CMS"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<refinerycms-core>, [">= 3.0.0", "~> 3.0"])
      s.add_runtime_dependency(%q<friendly_id>, [">= 5.0.1", "~> 5.0"])
    else
      s.add_dependency(%q<refinerycms-core>, [">= 3.0.0", "~> 3.0"])
      s.add_dependency(%q<friendly_id>, [">= 5.0.1", "~> 5.0"])
    end
  else
    s.add_dependency(%q<refinerycms-core>, [">= 3.0.0", "~> 3.0"])
    s.add_dependency(%q<friendly_id>, [">= 5.0.1", "~> 5.0"])
  end
end
