# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fit/client/version'

Gem::Specification.new do |spec|
  spec.name          = "fit-client"
  spec.version       = Fit::Client::VERSION
  spec.authors       = ["Gareth Townsend"]
  spec.email         = ["gareth.townsend@me.com"]
  spec.summary       = %q{A ruby gem for interacting with the aerobic.io fit-service.}
  spec.description   = %q{A ruby gem for interacting with the aerobic.io fit-service.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "rake"
end
