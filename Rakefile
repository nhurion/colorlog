require 'rake/clean'
require 'rubygems'
require 'rubygems/package_task'
require 'rdoc/task'

spec = eval(File.read('colorlog.gemspec'))

Gem::PackageTask.new(spec) do |pkg|
end

Rake::RDocTask.new do |rd|
  rd.main = "README.rdoc"
  rd.rdoc_files.include("README.rdoc","lib/**/*.rb","bin/**/*")
  rd.title = 'colorlog - Put colors in your logs'
end
