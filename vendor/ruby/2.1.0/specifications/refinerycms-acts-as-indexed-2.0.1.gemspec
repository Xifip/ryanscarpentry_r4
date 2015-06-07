# -*- encoding: utf-8 -*-
# stub: refinerycms-acts-as-indexed 2.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "refinerycms-acts-as-indexed"
  s.version = "2.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Philip Arndt", "U\u{123}is Ozols"]
  s.date = "2015-01-27"
  s.description = "An extension to handle the integration of Refinery CMS and ActsAsIndexed"
  s.email = "info@refinerycms.com"
  s.homepage = "http://refinerycms.com"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Refinery CMS ActsAsIndexed integration plugin"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<refinerycms-core>, ["~> 3.0.0"])
      s.add_runtime_dependency(%q<acts_as_indexed>, ["~> 0.8.0"])
      s.add_runtime_dependency(%q<decorators>, ["~> 2.0.0"])
    else
      s.add_dependency(%q<refinerycms-core>, ["~> 3.0.0"])
      s.add_dependency(%q<acts_as_indexed>, ["~> 0.8.0"])
      s.add_dependency(%q<decorators>, ["~> 2.0.0"])
    end
  else
    s.add_dependency(%q<refinerycms-core>, ["~> 3.0.0"])
    s.add_dependency(%q<acts_as_indexed>, ["~> 0.8.0"])
    s.add_dependency(%q<decorators>, ["~> 2.0.0"])
  end
end
