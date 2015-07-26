#!/bin/ruby

a=1..3 # inclusive range

puts a # outputs 1..3

# iterate
a.each {|e| puts e} 

b=1...3 # exclusive range
puts b # outputs 1...3

b.each {|e| puts e} # outputs 1 and 2

# test inclusion in a range
a=1..5
puts a.include? 5 # returns true
puts a.include? 6 # returns false

# range of chars
a="a".."z"
a.each {|e| puts e}


# convert from a range to an array
b=a.to_a
puts b.class # outputs Array

b[0]="q"
puts b # outputs ["q","b",....etc

# invoking to_a on a range literal
1..10.to_a # doesn't work since calling to_a on 10

(1..10).to_a # need to surround with parens for this to work
