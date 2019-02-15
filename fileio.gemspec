# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fileio/version'

Gem::Specification.new do |spec|
  spec.name          = "fileio"
  spec.version       = Fileio::VERSION
  spec.authors       = ["Phuong Nguyen"]
  spec.email         = ["phuongnd08@gmail.com"]

  spec.summary       = %q{Quickly upload to file.io}
  spec.description   = %q{Quickly upload to file.io}
  spec.homepage      = "https://github.com/phuongnd08/fileio"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
