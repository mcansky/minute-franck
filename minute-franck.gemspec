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
end
