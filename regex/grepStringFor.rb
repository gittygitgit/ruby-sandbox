#!/bin/ruby

puts "test.jpg".class

# grep method returns an array
puts "test.jpg".grep(/^.*.jpg$/).class


# grep method returns an array
puts "test.jpgx".grep(/^.*.jpg$/).class


# grep method returns an array
puts "test.jpgx".grep(/^.*.jpg$/)


puts "test.jpgx".grep(/^.*.jpg$/).length
puts "test.jpgx".grep(/^.*.jpg$/).empty?



if ! "test.jpgx".grep(/^.*.jpg$/).empty?
  puts "here1"
end

if ! "test.jpg".grep(/^.*.jpg$/).empty?
  puts "here2"
end

