#!/bin/ruby

foo=["foo.jpg", "foo2.jpg", "symmdf", "xyz", "foo3.jpg"]

foo.each {|s| puts s + "\n"}


puts "sdf.jpg".grep(/^.*.jpg$/)
puts "sdf.jpgss".grep(/^.*.jpg$/) 

if "sdf.jpgs".grep(/^.*.jpg$/)
 # puts "here"
end
