#!/bin/ruby

v1="ruby"
v2="programming"

if v1 == "ruby" && v2 == "programming"
  puts "match"
end

if v1 == "ruby" and v2 == "programming"
  puts "match"
end

if v1 != "ruby2" or v2 != "programming2"
  puts "match"
end

puts "match xxx" if v1.eql? "ruby"


# ! reverses the meaning of a test
if ! (v1 == "xys")
  puts "blah"
end

# not is an alias for !
if not (v1=="xys")
  puts "poop"
end
