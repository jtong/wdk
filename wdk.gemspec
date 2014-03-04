# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wdk/version'

Gem::Specification.new do |spec|
  spec.name          = "web-development-kit"
  spec.version       = WDK::VERSION
  spec.authors       = ["jtong"]
  spec.email         = ["jtong.kata@gmail.com"]
  spec.description   = %q{web development kit}
  spec.summary       = %q{put all my legacy gems together, include jt-mobile-kit and so on}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency "thor"
  spec.add_runtime_dependency "jt-mobile-kit-generator"

end
