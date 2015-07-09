# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sansu/version'

Gem::Specification.new do |spec|
  spec.name          = "sansu"
  spec.version       = Sansu::VERSION
  spec.authors       = ["kirikiriyamama"]
  spec.email         = ["kirikiriyamama@icloud.com"]

  spec.summary       = %q{Utility for statistics}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/kirikiriyamama/sansu"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
