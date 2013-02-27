# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'neologism/version'

Gem::Specification.new do |gem|
  gem.name          = "neologism"
  gem.version       = Neologism::VERSION
  gem.authors       = ["Eido NABESHIMA"]
  gem.email         = ["closer009@gmail.com"]
  gem.description   = %q{neologism}
  gem.summary       = %q{neologism}
  gem.homepage      = "https://github.com/closer/neologism"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rspec"
end
