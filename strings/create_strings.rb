#!/usr/bin/env ruby

$LOAD_PATH << File.expand_path(File.dirname('../utils.rb'))
require 'utils'

title = String.new # => sdflkjalfafafsd

title.empty? # => true
# puts 'title.empty?: ' + String(title.empty?)
Util.log('title.empty?',title.empty?)

title.size # => 0
puts 'title.size: ' + String(title.size)


