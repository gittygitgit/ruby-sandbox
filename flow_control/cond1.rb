#!/bin/ruby

v1="test"

if v1 == "test"; then
  puts"v1 == test"
end

if v1.eql? "test" then
  puts "v1.eq? test"
end

if 3 == 4 then
  puts '3==4'
elsif 3 == 6 then
  puts '3==6'
elsif 3 == 3
  puts '3==3'
end

s1="3"
s2="3"

if s1 == s2
  puts 's1 == s2'
end
