# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubocop_config/version'

Gem::Specification.new do |spec|
  spec.name          = "rubocop_config"
  spec.version       = RubocopConf::VERSION
  spec.authors       = ["siukaido"]
  spec.email         = ["siukaido@gmail.com"]

  spec.summary       = %q{Rubocop config gem.}
  spec.description   = %q{Rubocop config gem.}
  spec.homepage      = "https://info.studyplus.jp"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
