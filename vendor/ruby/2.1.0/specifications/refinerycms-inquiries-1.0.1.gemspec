# -*- encoding: utf-8 -*-
# stub: refinerycms-inquiries 1.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "refinerycms-inquiries"
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Resolve Digital"]
  s.date = "2011-05-27"
  s.description = "Inquiry handling functionality extracted from Refinery CMS to allow you to have a contact form and manage inquiries in the Refinery backend."
  s.email = "info@refinerycms.com"
  s.homepage = "http://refinerycms.com"
  s.rubygems_version = "2.2.2"
  s.summary = "Inquiry handling functionality for the Refinery CMS project."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<filters_spam>, ["~> 0.2"])
    else
      s.add_dependency(%q<filters_spam>, ["~> 0.2"])
    end
  else
    s.add_dependency(%q<filters_spam>, ["~> 0.2"])
  end
end
