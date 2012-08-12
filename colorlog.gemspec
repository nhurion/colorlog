$LOAD_PATH.push File.expand_path("../lib",__FILE__)
require "colorlog_version"

Gem::Specification.new do |s|
  s.name        = "colorlog"
  s.version     = "0.0.1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Nicolas Hurion"]
  s.email       = ["nicolas at hurion.eu"]
  s.homepage    = "https://github.com/nhurion/colorlog"
  s.summary     = %q{An helper to color logs based on regexp}
  s.description = %q{colorlog allow you to read a file with sone lines colored in red, green and yellow based on regexp}

  s.files       = ["bin/colorlog"]
  s.executables = ["colorlog"]
  s.add_dependency("rainbow")
end