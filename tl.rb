#!/usr/bin/env ruby

require 'optparse'
require 'rainbow'

options = {}
option_parser = OptionParser.new do |opts|
  executable_name = File.basename($PROGRAM_NAME)
  opts.banner = "Read a file and color the lines in " +
      "green".foreground(:green) + ", " +
      "yellow".foreground(:yellow) + " or " +
      "red".foreground(:red) + " based on the content of the line

Usage: #{executable_name} [options] filename

"

  options[:green] = "success"
  opts.on('-g', '--green RegExp', 'RegExp that matched will turn the line green') do |green|
    options[:green] = green
  end

  options[:yellow] = "warning"
  opts.on('-y','--yellow RegExp', 'RegExp that matched will turn the line yellow') do |yellow|
    options[:yellow] = yellow
  end

  options[:red] = /^(?:(?!\bTests\b).)*(?:failure|error).*$/i
  opts.on('-r', '--red RedExp', 'RegExp that matched will turn the line red') do |red|
    options[:red] = red
  end

end

option_parser.parse!

success_check = Regexp.new(options[:green], Regexp::IGNORECASE)
warning_check = Regexp.new(options[:yellow], Regexp::IGNORECASE)
error_check = Regexp.new(options[:red])

ARGF.each do |line|

  color = :default

  if line =~ success_check
    color = :green
  end
  if  line =~ warning_check
    color = :yellow
  end
  if  line =~ error_check
    color = :red
  end
  printf("%s".foreground(color), line)
end