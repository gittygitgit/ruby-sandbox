#!/bin/ruby

# symbol literal
puts :hello.class # outputs Symbol

puts :"hello".class # outputs Symbol
puts :"hello nice to meet you".class # outputs Symbol

s=:"#{1+2} blind mice
puts s.class # outputs Symbol

# check if an object contains method to_a
a="dsfsdf"
puts a.respond_to? :to_a # outputs false

a=1..4
puts a.respond_to? :to_a # outputs true

# if an object contains method to_a, call it using send, otherwise output "darn"
a="a string"
b=1...5

meth="to_a"
if (a.respond_to? :"#{meth}")
	a.send(meth)
else
	puts "a of type #{a.class} does not respond to method [name=\"#{meth}\"]"
end

