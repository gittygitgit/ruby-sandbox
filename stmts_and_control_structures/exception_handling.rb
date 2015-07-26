#!/bin/ruby
=begin
ruby raises exceptions using the raise statement
exceptions are instances of Exception
rescue is used to handle a raised exception
although throw / catch is not intended for use with exceptional conditions, exceptions raised propogate very similarly to thrown symbols
=end

=begin
most normal exceptions that can be handled extend StandardError
=end
=begin
fail is a synonynm for raise
use it if by raising an exception you expect the process to fail
=end

def raiseE
  p "in raiseE"
  raise # raise a runtime exception
end

raiseE

def raiseE msg
  p "in raiseE"
  raise msg # raise runtime exceptoin with message msg - this is VERY common!!!
end

raise "hi!"


def factorial n
  raise "bad arg" if n < 1
=begin
alternatively equivalent ways to raise the exception are...
raise RuntimeError, "bad argument" if n < 1 # raise is invoked w first arg as an obj having an exception method.  
  this causes the method to be invoked and raise the Exception object that it returns.  The Exception class contains 
  a method exception
  
  if a second arg of type string is passed to raise, then the arg is passed to the exception method of the first arg class.  This is intended
  to signify an exception message.
  
  A third arg may be passed, that being an array of strings signifying the backtrace.  If not provided, then 
  ruby sets the backtrace itself on the exception using the Kernel caller method.
raise RuntimeError.new("bad argument") if n < 1

raise RuntimeError.exception("bad argument") if n < 1
=end
  return 1 if n==1
  n * factorial(n-1)
end

=begin
how does one determine all subclasses of StandardError?
See http://matthewkwilliams.com/index.php/2008/08/22/rubys-objectspace-subclasses/
=end

def raiseAgain e
  p "in raiseAgain"
  raise ArgumentError.new("bad arg [#{e}]") if e == 4
end

=begin

begin # start of a block within which exceptions may occur...similar to try in java

rescue # block that will be invoked if an exception is raised from within the begin block

end

=end

=begin
any exception raised can be referred to by $!, or $ERROR_INFO if require 'English' is executed.
Better yet, the exception can be assigned to a variable in the rescue clause
=end

begin
  p "before factorial call"
  factorial 0
  p "after factorial call"
rescue => ex
  p "[exception-class:#{ex.class}, message:#{ex.message}]"
end

p ex # rescue clause does not define a new variable scope.  Any variables defined within may be visible after resuce is left.

=begin
rescue clauses handle StandardError subclasses only
to handle exceptions that don't extend StandardError or only specific exception(s), 
  attach an exception type to the rescue clause
=end


def fooForInt a
  raise TypeError, "Only strings allowed." if !a.is_a? String
  raise ArgumentError, "bar not allowed" if a == "bar"
  p "good argument"
end

begin
  p " before factorial call"
  fooForInt "bar"
rescue TypeError => error # don't handle ArgumentError
  p "in rescue"
end

begin
  p " before factorial call"
  fooForInt "bar"
rescue TypeError => ex # don't handle ArgumentError
  p "in rescue [type=#{ex.class}]"
rescue ArgumentError => ex
  p "in rescue [type=#{ex.class}]"
end

# similar to java, list rescue clauses from most specific to most general

def explode
  raise "bam?" if rand(10) == 0
end

def risky
  begin            # This block
    10.times do    # contains another block
	  explode      # that might raise an exception.
	end            # No rescue clause here, so propagate out.
  rescue TypeError # This rescue clause cannot handle a RuntimeError..
    p $!           # so skip it and propagate out.
  end         
  "hello"          # This is the normal return value, if no exception occurs.
end                # No rescue clause here, so propagate out.

def defuse
  begin            # the following code may fail with an exception
    puts risky     # Try to invoke print the return value
  rescue RuntimeError => e
                   # if we get an exception
    p e.message    # print the error message instead
  end
end  

defuse
  

=begin
using retry within a rescue clause causes the block to which the rescue clause is attached to be rerun
retry may be useful in scenarios where an exception is caused by a transcient, non-programming-related error
=end

tries = 1
begin
  tries += 1
  p "start of begin [tries=#{tries}"
  raise "error"
rescue => e
  retry if tries < 4
end


# another example
require 'open-uri'

tries = 0
begin
  tries += 1
  open('http://www.example.com/') {|f| p f.readlines}
rescue OpenURI::HTTPError => e
  p e.message
  if (tries < 4)
    sleep(2**tries)
	retry
  end
end

=begin
an else clause can be associated with a begin block
code in an else clause will only execute if the begin block executes to completion without exception
else comes after the rescue clause(s)
=end

def bar a
  raise ArgumentError, "no arguement passed" if a == nil
  raise TypeError if !a.is_a? Fixnum
  raise ArgumentError if a > 10
end

begin
  bar 5 # else will be called
rescue => ex
  p "in rescue [ex.message=#{ex.message}]"
else
  p "in else"
end

begin
  bar 11 # rescue will be called
rescue => ex
  p "in rescue [ex.message=#{ex.message}]"
else
  p "in else"
end
