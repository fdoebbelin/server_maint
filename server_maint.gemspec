# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'server_maint/version'

Gem::Specification.new do |gem|
  gem.name          = "server_maint"
  gem.version       = ServerMaint::VERSION
  gem.authors       = ["Fritz-Rainer Doebbelin"]
  gem.email         = ["frd@doebbelin.net"]
  gem.description   = %q{Server maintenance with chef-solo}
  gem.summary       = %q{Host usefull chef cookbooks for server maintenance}
  gem.homepage      = "http://github.com/fdoebbelin/server_maint"

  gem.add_development_dependency "rake"  
  gem.add_dependency "chef"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
