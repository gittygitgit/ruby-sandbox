#!/bin/ruby

def fact(x)
  if x == 0 
    1
  else
    x * fact(x-1)
  end
end


puts fact(ARGV[0].to_i)
