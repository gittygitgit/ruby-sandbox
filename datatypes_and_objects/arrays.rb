#!/bin/ruby

# an array literal
puts [1, 2, 3, 4]

puts a.class # outputs Array

a = [1, 2, 3, 4]

puts a

# An array made up of arbitrary expressions
a=[1+3, 3, 1+1]

# Array made up of several types
a=[1, "sdf", false]

# iterating over array elements
a.each {|e| puts e}

# %w 
a=%w[this is a test]
a.each {|e| puts e}


# accessing elements by indexes
puts a[0] # puts this

puts a[-1] # puts test

puts a[1,2] # puts is a 


# assigning elements
a[0]="abc"

puts a # abc is a test

# Array syntax
a=Array.new # empty array

# initializing an array with empty values
a=Array.new(3)
puts a # puts [nil,nil,nil]

# init array containing 3 el's of value 3 each
a=Array.new(3,"a")
puts a # puts ["a","a","a"]