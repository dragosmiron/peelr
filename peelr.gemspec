# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'peelr/version'

Gem::Specification.new do |spec|
  spec.name          = "peelr"
  spec.version       = Peelr::VERSION
  spec.authors       = ["Dragos Miron"]
  spec.email         = ["dragosmr+github@gmail.com"]
  spec.description   = %q{See who is calling your method}
  spec.summary       = %q{peelr gives you means to tell from where a given method is called}
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
