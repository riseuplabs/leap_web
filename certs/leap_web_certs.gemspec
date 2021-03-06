$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "leap_web_certs/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "leap_web_certs"
  s.version     = LeapWebCerts::VERSION
  s.authors     = ["Azul"]
  s.email       = ["azul@leap.se"]
  s.homepage    = "http://www.leap.se"
  s.summary     = "Cert distribution for the leap platform"
  s.description = "This plugin for the leap platform distributes certs for the EIP client. It fetches the certs from a pool in CouchDB that is filled by leap-ca."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "Readme.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.8"
  s.add_dependency "leap_web_core", "~> 0.0.1"
  
  s.add_development_dependency "mocha"

end
