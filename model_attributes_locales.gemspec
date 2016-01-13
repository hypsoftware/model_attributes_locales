# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'model_attributes_locales/version'

Gem::Specification.new do |spec|
  spec.name          = "model_attributes_locales"
  spec.version       = ModelAttributesLocales::VERSION
  spec.authors       = ["joaoribeirost"]
  spec.email         = ["joaoribeirost@gmail.com"]
  spec.summary       = "This gem lets you generate the locales stubs for all your model attributes"
  spec.description   = "With this gem you can generate the stubs for all your models attributes! That way you can "
  spec.homepage      = "https://github.com/hypsoftware/model_attributes_locales"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
