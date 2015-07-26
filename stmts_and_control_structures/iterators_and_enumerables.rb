#!/bin/ruby
# times, each, map, and upto are iterators
# Each interacts with the block of code that follows.
# the mechanism that controls the interaction of the iterator and the block is called yield.
# a block is like a method in that it contains paramaters and is called by the yield control stmt

# loop
# loops until the block executes return, break or other stmt that exits from the loop
# Loop is part of the Kernel class
loop { puts "here"; break if (rand(100) > 80) }

=begin
Methods of the Kernel module are global functions
global functions declared outside of a class definition, e.g. in a module, are defined as private instance methods of Object.
private methods are implicitly called on self and may only be called by instance methods of the class.
the difference between protected and private methods is that protected methods may be called from instances of subclasses
=end

# Numeric iterators
4.upto(6) {|x| print x} # outputs 456

3.times {|x| print x} # outputs 012

0.step(Math::PI, 0.1) {|x| puts Math.sin(x) }

=begin
What does the :: operator mean?
It is used to reference a constant.
The left side of the :: is an expression that evaluates to a class or module that contains the constant
If there is nothing the the left of the ::, then the constant is looked up in global scope 
global constants are shorthand for Object::
if a constant cannot be found in the defined scope, a NameError is raised
=end

ABC=1.234
puts ::ABC # outputs 1.234

puts ::ARGV # global constant ARGV


# Enumerable objects
=begin
Array, Hash, Range and other classes define an each iterator that passes in each element of the collection to the associated block.
The for loop can be used on and class that defines an each iterator method
=end

# array literal
a=[1,2,3]
a.each {|x| print x} # outputs 123

# range literal - inclusive
b=(1..3)
b.each {|x| print x} # outputs 123, same as 1.upto(3) {|x| print x}

# Classes other than traditional data-structure classes may define each methods.
# Ruby's IO class defines an each that yields lines of text to a block as read from the Input/Output object
# example of usage

=begin
blocks may be defined using braces or with a beginning do and an ending end
=end
File.open(filename) do |f| 
f.each {|line| print line} # files passed to blocks are automatically deallocated when the block exits
end

# Collect adds result of each block into an array
r = [1,2,3].collect {|e| e*3} # returns [3, 6, 9]

# select collects result of each block which does not equal false or nil into an array
r = [false, true, false, true].select {|e| e} # returns [true, true]

# reject collects results which equal false or nil into an array
r=[false, true, nil, false].reject {|e| e} # returns [false, nil, false]

r=(1..3).inject {|s, e| s + e} # returns 6
