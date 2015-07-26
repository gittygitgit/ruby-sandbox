#!/bin/ruby
=begin
return without a value returns nil
=end

def foo
  return
end

def bar
  return 2
end

p foo # returns nil
p bar # returns 2

# return is useful when you want to return prematurely or more than one value

def abc
  return 1,2,3
end

x=abc # returns array [1,2,3]

# return in a block returns not only from the block, and not only from the 
# iterator yielding to the block, but to the enclosing method to return


# break used in a block returns from the block and out of any loop 
10.upto(20) {|e|
  break if e > 13
  p e
}

def foo
  p "before loop"
  1.upto(4) {|e|
    yield e
  }
  p "after loop"
end

foo {|e| break } # breaks out of the method...would only break out of loop if block was yielded to from a loop in the method



