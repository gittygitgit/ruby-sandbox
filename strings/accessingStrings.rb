#!/bin/ruby

# [] is an alias of the slice method

line="A horse! a horse! my kingdom for a horse!"
cite="Act V, Scene IV"
speaker="King Richard III"

puts speaker['King']
puts speaker['junk']

puts line[7] # => returns an integer
puts line[7].chr # => calls chr method of Integer class

puts line[9,10]
puts line[9,10].capitalize

puts line[9..13]

puts line[9...13]

puts line.index("k")




