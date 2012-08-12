require File.join([File.dirname(__FILE__),'lib','colorlog_version.rb'])

Gem::Specification.new do |s|
  s.name        = "colorlog"
  s.version     = ColorLog::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Nicolas Hurion"]
  s.homepage    = "https://github.com/nhurion/colorlog"
  s.summary     = %q{An helper to color logs based on regexp}
  s.description = %q{colorlog allow you to read a file with some lines colored in red, green and yellow based on regexp}

  s.files       = ["bin/colorlog"]
  s.executables = ["colorlog"]

  s.add_dependency("rainbow")
  s.add_development_dependency("rake", "~> 0.9.2")
  s.add_development_dependency("rdoc", "~> 3.12")
end