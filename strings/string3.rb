#!/bin/ruby

# Concatenating strings
puts "Hello, " " " "Matz" "!"

puts "Hello, " + " " + "Matz" + "!"

puts "Hello, " << "Matz!"

# << is a method
puts "Hello, " << " " << "Matz" << "!"

puts "Hello, ".concat "Matz!"

h="Hello, "
m="Matz!"
puts h.concat(m)

# make a string immutable
greet="Hello, Matz!"
greet.freeze


puts "Is greet frozen? " << String(greet.frozen?)
greet.concat("!")


