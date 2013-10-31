# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubocop192/version'

Gem::Specification.new do |spec|
  spec.name          = "rubocop192"
  spec.version       = Rubocop192::VERSION
  spec.authors       = ["Kouji Takao"]
  spec.email         = ["kouji.takao@gmail.com"]
  spec.description   = %q{rubocop192 can used [Rubocop](https://github.com/bbatsov/rubocop) on Ruby 1.9.2.}
  spec.summary       = %q{Rubocop for Ruby 1.9.2. (unofficial)}
  spec.homepage      = "https://github.com/takaokouji/rubocop192"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency "rubocop"
end
