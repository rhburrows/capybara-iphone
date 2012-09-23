# -*- encoding: utf-8 -*-
require File.expand_path("../lib/capybara/iphone/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "capybara-iphone"
  s.version     = Capybara::Iphone::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Ryan Burrows"]
  s.email       = ["rhburrows@gmail.com"]
  s.homepage    = "http://rubygems.org/gems/capybara-iphone"
  s.summary     = "A capybara driver that acts like an iPhone"
  s.description =
    "A driver for capybara to test your rack application as an iPhone"

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "capybara-iphone"

  s.add_dependency("capybara", [">= 1.1"])

  s.add_development_dependency("rspec", [">= 2.11.0"])
  s.add_development_dependency("sinatra", [">= 1.2"])

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map do |f|
    f =~ /^bin\/(.*)/ ? $1 : nil
  end.compact
  s.require_path = 'lib'
end
