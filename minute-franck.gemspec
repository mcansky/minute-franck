# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'minute-franck/version'

Gem::Specification.new do |gem|
  gem.name          = "minute-franck"
  gem.version       = MinuteFranck::VERSION
  gem.authors       = ["Thomas Riboulet"]
  gem.email         = ["riboulet@gmail.com"]
  gem.description   = "simple gem to create Freckle entries"
  gem.summary       = "simple gem to create Freckle entries"
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  # Dependencies
  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  gem.add_runtime_dependency "letsfreckle-client", "~> 0.2"
  gem.add_runtime_dependency "rack", "~> 1.5"
  gem.add_runtime_dependency "thor", "~> 0.17"
  gem.add_runtime_dependency "builder", "~> 3.1"
end
