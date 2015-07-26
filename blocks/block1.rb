#!/bin/ruby

pacific=["Washington", "Oregon", "California"]


# the block uses state as a local variable
pacific.each do |state|
  puts state
end

# you can replace the do / end format with braces 
pacific.each {|state| puts state}
