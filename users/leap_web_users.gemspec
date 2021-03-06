$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "leap_web_users/version"
require "leap_web_core/dependencies"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "leap_web_users"
  s.version     = LeapWebUsers::VERSION
  s.authors     = ["Azul"]
  s.email       = ["azul@leap.se"]
  s.homepage    = "http://www.leap.se"
  s.summary     = "User registration and authorization for the leap platform"
  s.description = "This this plugin for the leap platform provides user signup and login. It uses Secure Remote Password for the authentication."
  
  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.8"
  s.add_dependency "leap_web_core", "~> 0.0.1"
  s.add_dependency "couchrest_session_store", "~> 0.0.1"
  s.add_dependency "ruby-srp"

  LeapWebCore::Dependencies.add_ui_gems_to_spec(s)
  
  s.add_development_dependency "mocha"

end
