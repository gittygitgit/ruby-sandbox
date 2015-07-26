#!/bin/ruby

a=[1,9,3]

# sort creates and returns a  new array sorted
b=a.sort

puts "a=[ " + a.to_s + " ]"
puts "a.sort=[ " + a.sort.to_s + " ] "
puts "a after a.sort=[ " + a.to_s + " ]" # a.sort doesn't change a


puts "a.sort!=[ " + a.sort!.to_s + " ]"
puts "a after a.sort!=[ " + a.to_s + " ]" # a.sort! changes a in place

# sort! sorts the given array in place
# puts "a.sort! sorts a in place...a before [ " +  a + " ], a after [ " + a.sort! + "]" 
