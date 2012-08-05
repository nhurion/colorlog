#!/usr/bin/env ruby

require 'rainbow'

ARGF.each do |line|

  color = :default
  success_check = Regexp.new("success", Regexp::IGNORECASE)
  warning_check = Regexp.new("warning", Regexp::IGNORECASE)
  error_check = Regexp.new("failure|error", Regexp::IGNORECASE)

  if line =~ success_check
    color = :green
  elsif  line =~ warning_check
    color = :yellow
  elsif  line =~ error_check
    color = :red
  end
  printf("%s".foreground(color), line)
end