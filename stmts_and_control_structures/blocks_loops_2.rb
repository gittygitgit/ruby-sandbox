#!/bin/ruby

=begin
redo moves control to the first statement in a block or loop
redo doesn't reevaluate any loop condition nor fetch the next element from an ite
=end

count=0

10.downto(1) {|e|
  p e
  count += 1
  redo if count == 3
}

# redo is sometimes used to recover from input errors
p "Enter first word you think of"
words = %w(apple banana cherry) # shorthand for ["apple", "banana", "cherry"]
response = words.collect do |word|
  p word + "> " # prompt the user
  response = gets.chop # get a response
  if response.size == 0 
    word.upcase!
	redo
  end
  response
end

=begin
using throw and catch is not the same as using raise and rescue
what's the diff btw using throw / catch and raise / rescue?
catch creates a labeled block, similar to java's labeled break
calling throw within a labeled block breaks out to the line following the labelled block
throw breaks out of the labeled block no matter how many levels of looping within the labelled block the throw is called from
catch throw is not to be used as an exception mechanism
=end

for matrix in data do # process a deelply nested data structure
  catch :missing_data do # label this statement so we can break out
    for row in matrix do
      for value in row do
	    throw :missing_data unless value # break out of 2 loops at once
        # otherwise, do some actual data processing here
	  end
    end
  end
end

=begin
catch and throw are not used very often
a catch block returns the last statement executed if no throw is executed
throw may be used to return a value from the catch block and distinguish 
if throw _is_ called, then the default return value is nil
throw may be passed a return value to differentiate return from a block caused by a throw as opposed to normal completion
=end




