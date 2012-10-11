# -*- encoding: utf-8 -*-
require File.expand_path('../lib/solve/gem_version', __FILE__)

Gem::Specification.new do |s|
  s.authors               = ["Jamie Winsor", "Andrew Garson"]
  s.email                 = ["jamie@vialstudios.com", "andrew.garson@gmail.com"]
  s.description           = %q{A Ruby constraint solver}
  s.summary               = s.description
  s.homepage              = "https://github.com/reset/solve"

  s.files                 = `git ls-files`.split($\)
  s.executables           = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.test_files            = s.files.grep(%r{^spec/})
  s.name                  = "solve"
  s.require_paths         = ["lib"]
  s.version               = Solve::VERSION
  s.required_ruby_version = ">= 1.9.1"

  s.add_dependency 'json'
end
