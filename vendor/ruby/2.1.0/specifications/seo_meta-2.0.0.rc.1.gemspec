# -*- encoding: utf-8 -*-
# stub: seo_meta 2.0.0.rc.1 ruby lib

Gem::Specification.new do |s|
  s.name = "seo_meta"
  s.version = "2.0.0.rc.1"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Philip Arndt"]
  s.date = "2013-10-10"
  s.description = "SEO Meta tags plugin for Ruby on Rails"
  s.email = "p@arndt.io"
  s.homepage = "http://p.arndt.io"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "SEO Meta tags plugin"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<combustion>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_runtime_dependency(%q<railties>, [">= 3.0.0"])
    else
      s.add_dependency(%q<combustion>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<railties>, [">= 3.0.0"])
    end
  else
    s.add_dependency(%q<combustion>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<railties>, [">= 3.0.0"])
  end
end
