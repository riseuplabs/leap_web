$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "leap_web/version"

Gem::Specification.new do |s|
  s.platform = Gem::Platform::RUBY
  s.name = 'leap_web'
  s.version = LeapWeb::VERSION
  s.summary = 'Leap web framework for Ruby on Rails.'
  s.description = 'Leap is the Leap Encryption Access Project. This is a framework for the web administrative interface. Its components live in separate gems. You can find out more about leap on www.leap.se'

  s.files = Dir['README.md', 'lib/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'
  s.required_ruby_version = '>= 1.8.7'
  s.required_rubygems_version = ">= 1.3.6"

  s.author = 'Azul'
  s.email = 'azul@leap.se'
  s.homepage = 'http://leap.se'

  # s.add_dependency 'leap_web_core'
  s.add_dependency 'leap_web_certs'
  s.add_dependency 'leap_web_users'
end