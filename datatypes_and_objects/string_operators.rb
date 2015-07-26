# --------------------------
# string operators
# --------------------------

# Concatenation
puts "sdfsfd" + "sdfsffds"

# You must convert non String's into strings yourself
$x=36

# this doesn't work...
#puts "I am" + " " + $x + " years old."

# ...but this does...
puts "I am" + " " + $x.to_s + " years old."

# string conversion _is_ performed automatically when using String interpolation
$x=3
puts "Earth is the #{$x}rd planet from the sun"

# String concatenation creates a new String object
s="sss"
printf "s.Object_id (before):       %s", s.object_id

s="sss" + "3234"
printf "s.Object_id (after):       %s", s.object_id


# append operator doesn't create a new object
s="sss"
printf "s.Object_id (before):       %s", s.object_id

s << "2343243"
printf "s.Object_id (before):       %s", s.object_id

# * operator
dot='.'
puts dot*3  # print 3 dots

# if left operand of * is a string interpolation, interpolation only occurs once.
a=0
"#{a=a+1} " * 3 # Returns "1 1 1" instead of "1 2 3"

# [] operators
str='hello'
puts str[0] # prints 'h'
puts str[str.length] # prints nil
puts str[str.length - 1] # prints o
puts str[-1] # prints o (last char of str)
puts str[-2] # prints l (second to last char of str)

# assignment
str[1]='l'
puts str # prints hlllo

# substrings
puts str[1,2] # prints lll
puts str[0,2] # prints h2

# substrings using ranges
puts str[2..3] # prints ll
puts str[-2..-1] # prints lo
puts str[0..0] # prints H

# string indexing
s = "hello"
while(s["l"])
  s["l"] = "L"
end
puts s # heLLo

# replace all consonents with x
s = "abracadabra"
while(s[/[aeiou]/]) 
  s[/[aeiou]/]='x'
end
puts s # prints xbrxcxdxbrx