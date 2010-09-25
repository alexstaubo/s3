# -*- encoding: utf-8 -*-

require File.expand_path("../lib/s3/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "s3"
  s.version     = S3::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jakub Kuźma"]
  s.email       = ["qoobaa@gmail.com"]
  s.homepage    = "http://jah.pl/projects/s3.html"
  s.summary     = "Library for accessing S3 objects and buckets"
  s.description = "S3 library provides access to Amazon's Simple Storage Service. It supports both: European and US buckets through REST API."

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "s3"

  s.add_dependency "proxies"
  s.add_development_dependency "test-unit", ">= 2.0"
  s.add_development_dependency "mocha"
  s.add_development_dependency "bundler", ">= 1.0.0"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = "lib"
end
