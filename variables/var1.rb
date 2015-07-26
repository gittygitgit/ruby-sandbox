#!/bin/ruby

# Define a constant
DEFAULT_VAL=100

foo=DEFAULT_VAL

if (ARGV.size == 1)
  foo=ARGV[0]
end

puts foo


# if executes if condition evaluates to anything but false or nil
# code to be executed must be separated from the condition by a newline, semicolon, or then

if (ARGV.size >= 1 );puts "one arg" else puts "more than 1 arg" end



# referring to an uninitialized local var results in an error

puts xyz # outputs name error


def doit foo
  if foo==1
    name="one"
  elsif foo==2
    name="two"
  else
    puts "sfsdf"
  end
end


doit 3
