# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "versionary/version"

Gem::Specification.new do |s|
  s.name        = "versionary"
  s.version     = Versionary::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["RiverGlide"]
  s.email       = ["talktous@riverglide.com"]
  s.homepage    = "https://github.com/RiverGlide/Versionary"
  s.summary     = %q{Simple, comparable, rational Version Number object}
  s.description = %q{Versionary has a simple VersionNumber object that allows you to do things like `raise "Not the right version" unless VersionNumber.of( RUBY_VERSION ) >= '1.9.2'` }

  s.licenses = ["MIT"]

  s.files              = `git ls-files`.split("\n")
  s.test_files         = `git ls-files -- {test,spec}/*`.split("\n")
  s.require_paths      = ["lib"]

  s.add_development_dependency "bundler", "~> 1.0.0"
  s.add_development_dependency "rake", "~> 0.8.7"
  s.add_development_dependency "rspec",    ">=2.5.0"
end
