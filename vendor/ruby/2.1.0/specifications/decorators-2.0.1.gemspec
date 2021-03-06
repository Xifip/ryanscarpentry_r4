# -*- encoding: utf-8 -*-
# stub: decorators 2.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "decorators"
  s.version = "2.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Philip Arndt"]
  s.date = "2015-04-16"
  s.description = "Manages the process of loading decorators into your Rails application."
  s.email = "p@arndt.io"
  s.homepage = "https://github.com/parndt/decorators"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Rails decorators plugin."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>, ["< 5.0.0", ">= 4.0.0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<railties>, ["< 5.0.0", ">= 4.0.0"])
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<railties>, ["< 5.0.0", ">= 4.0.0"])
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end
