#!/bin/ruby

DEFAULT_VAL=100

foo=DEFAULT_VAL
if (ARGV.size > 0)
	foo=ARGV[0]
end

puts foo


# another way

if (ARGV.size > 0) then
	foo = ARGV[0]
end

puts foo

# another way
# parens aren't required here
if ARGV.size > 0 then foo=ARGV[0] end

# another way
if ARGV.size > 0;foo=ARGV[0];puts "hi"; puts foo; end

# what is the difference between a statement and an expression
# begin
dfsfdsf
# end

=begin
What is the diff btw a statement and an expression?
an expression evaluates to a value
a stmt does something
in ruby, everything is an expression
this provids an elegant way of returning values
=end



# the return value of an if is the last line to be executed in the execution block

def foo a
  if a==1
    then name="one"
  elsif a==2
    then name="two"
  else
     name="unknown"
  end
end

puts name # returns name error

foo 2
puts name # returns "two"

# another way of writing this based on the fact that the return val of an if is the last stmt executed

def foo a
  if a==1; "one" elsif a==2; "two" else "unknown" end
end

name=foo 2
puts name # puts "two"


# single line if's...use if to separate the conditional and the executable code
puts "here I am" if true
puts "here I am" if false # executable doesn't execute


# if returns nil if no code is executed
puts x=3 if false # returns nil
puts x=3 if true # returns 3

# unless is opposite of if, except elsif not allowed
def testUnless num
  unless num > 100
    "less than 100"
  end
end

testUnless 3 # returns "less than 100"
testUnless 200 # returns nil

def testDumb 
  unless false
  end
end

testDumb # returns nil


