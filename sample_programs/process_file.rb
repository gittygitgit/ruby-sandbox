#!/bin/ruby

file = File.open("states.txt")
# process as needed
file.each do |line|
  a=line.split('|')
  puts "state=" + a[0] + ", capital=" + a[1]
end

file.close
