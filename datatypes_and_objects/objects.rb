#!/bin/ruby

# false, true and nil are singleton instances
puts nil.class
puts false.class
puts true.class

# In ruby, vars are passed by value, so any changes to a passed parm are local
# to the method 
# 
def foo_s(x)
	x<<"suffix"
end
a="prefix"
puts a # outputs prefix

foo_s(a)

puts a # outputs prefixsuffix

# Int ruby, Fixnum and Symbol objs are immutable

def foo_i(x)
	x += 3
end

a=3

puts a # returns 3

foo_i(a)

puts a # returns 3

# object identity
# All objects contain a method object_id
a="swfsfsfs"
puts a.object_id

a << " sffs"
puts a.object_id # object id doesn't  change

# default hash implementation in Object class returns object_id
o=Object.new

puts o.object_id # both the following return the same value
puts o.hash

# class and type
s="test"
puts s.class # returns String
puts s.class.superclass # returns Object
puts s.class.superclass.superclass # returns BasicObject
puts s.class.superclass.superclass.superclass # returns nil

# test type of an object
puts s.class == String # returns true
puts s.instance_of? String # returns true
puts s.instance_of? Object # returns false
puts s.instance_of? BasicObject # returns false
puts s.instance_of? Fixnum # returns false

puts s.is_a? String # returns true
puts s.is_a? Object # returns true
puts s.is_a? BasicObject # returns true
puts s.is_a? Fixnum # returns false

puts s === String # returns true
puts s === Object # returns true
puts s === BasicObject # returns true
puts s === Fixnum # returns false

# does object have a "<<" operator
s="string"
puts s.respond_to? :"<<" # returns true
puts s.respond_to? :"vv" # returns false

# object equality
a="sdfsdf"
b=c="foo"
puts a.equal?(b) # outputs false
puts b.equal?(c) # outputs true

# same as the following...
puts a.object_id == b.object_id
puts b.object_id == c.object_id
puts a == b # output false
puts b == c # output true

a="Ruby"
b="Ruby"

puts a.equal?(b) # returns false becuase a and b refer to different objects
puts a == b # returns true because the String class redefines the operator so different instances can be compared for equality

# Ruby equals is the opposite of java, where == tests object identify and .equals tests logical identity


# Object comparison / order
puts 1 <=> 5 # returns -1
puts 4 <=> 4 # returns 0

