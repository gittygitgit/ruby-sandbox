#!/bin/ruby

if true == true && 3==3
  puts "true"
end

if 3==4 # then is optional
  puts "true"
end

v=45

if v < 20
  puts "<20"
elsif v < 40
  puts "<40"
else
  puts ">=40"
end

# previous on one line
if v < 20; puts "<20"; elsif v < 40; puts "<40"; else; puts ">=40";end


