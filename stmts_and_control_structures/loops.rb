#!/bin/ruby

# while loop
x=0;while x < 10 do
  puts x
  x = x + 1
end

# until loop
x=0;until x == 10 do
  puts x
  x = x + 1
end

while (x < 10) do
  puts x
  x=x+1
end

# single line
x=0
puts x=x+1 while (x< 10)

# includes multiple statements 
x=0
(puts x; x=x+1) while x < 10


