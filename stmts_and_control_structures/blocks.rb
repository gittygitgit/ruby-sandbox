#!/bin/ruby

=begin
the return value of a block is the value of the last expression in the block
=end

a=[4,2,6,1,9]

=begin
methods ending with ! signify methods which may modify the object on which they are called
=end

a.sort! # changes a itself

b=[4,2,5,1,46]
puts b.sort # outputs 1,2,4,5,46
puts b # outputs 4,2,5,1,46

# providing a block with the Array.sort method yields control to the block
# and leaves the block with the job of comparing two elements

a=[55,2,6,44,1]

a.sort! {|a,b| a <=> b} # returns -1, 0, or 1 to underlying iterator method

# trying to sort an array  containing both strings and Fixnum's fails without a custom block

a=[1,6,2,"sd",5]
a.sort # fails


a.sort {|a,b| 
  puts a.to_s + "|" + b.to_s
  diff_type=a.class != b.class
  rslt=nil
  if diff_type 
    rslt = a.class == Fixnum ? 1 : -1
  else
    rslt = a <=> b
  end
  rslt
}

=begin
using return in a block exits from the method that yielded the block
only use return in a block if you want this
otherwise, use next to return from the current block and proceed to the next
=end

a=[1,4,2,5,6,7,4,8]

a.collect {|e|
  is_odd = e % 2 != 0 
  next "odd" if is_odd # return prematurely
  puts "not odd"
  e
}

# next can also be used to return more than one value

a.collect {|e|
  is_odd = e % 2 != 0 
  next "odd", e if is_odd # return prematurely
  puts "not odd"
  e
}

=begin
variables in method scope are available in block scope
variables defined in block scope are undefined once a block returns
=end

def foo
  i=20
  print "before yielding [i=#{i}]\n"
  yield i # changes to i in block don't last after block returns
  print "after yielding [i=#{i}]\n"
end

foo {|e| print "in  block [i = #{i}]\n"}
foo {|e| i=30;print "in block [i = #{i}]\n"}


=begin
variables defined outside of a block are available inside of the block
=end

total=0
1.upto 10 do |e|
  p e
  total += e
  p total
end
p total

=begin
block arguments are initialized using variable assignment
if a method invokation passes two args and a block only defines 1 block parm, then 
the first param is assigned to the block parm and the second is silently dropped
if we tried doing this with a method (trying to pass multiple parameters to a method 
that only accepts 1), we would get an error
=end

def bar(i)
  yield 1,2,3
end

bar (3) {|e| print "block argument #{e}"} # prints 1

=begin
If we prefix the block parm with *, then multiple yielded values will be packed into a single array
=end

def foo(i)
  yield 1,2,3,4
end

foo (3) {|*e| p e} # prints [1,2,3,4]

# We can apply the * prefix at any position
def bar
  yield 1,2,3,4
end

bar {|a,*b,c| p a,b,c} # outputs 1,[2,3],4

# block parameters may not be assigned default values as method args may

