#!/bin/ruby

=begin
ensure may be associated with a begin clause regardless of whether
  a rescue clause is present
=end


def goodArg? a
  a > 10 ? true : false;
end
  
def test e
	begin
	  p "in begin"
	  return if goodArg? e
	  p "exiting begin"
	  #  return 30
	rescue
	  
	else
	  p "else invoked"
	ensure
	  p "ensure invoked"
	end
end

test 5 # invokes else and ensure
test 30 # invokes ensure only, since begin clause returns early, which means else isn't invoked

=begin
ensure clauses can complicate exception propogation
if an exception is raised and an ensured clause is invoked along the way, the presence of a return,
  break, or next statements will cause propogation of the exception to be abandoned
the return value of a begin block may be overridden by the presence of a return value in an ensure clause
=end

def foo
  begin
    return 2
  ensure
    return 3
  end
end

p foo # returns 2

# an ensure clause may only alter a begin return value if the keyword return is present

def test
  begin return 1 ensure 2 end
end

test # returns 1


=begin
  rescue, else and ensure may all be used in the context of a def just as well as a begin stmt
=end

def test
  p e
  rescue => ex
    p "in rescue [ex.class=#{ex.class}]"
end

test

=begin
any statement may be followed by the rescue keyword plus another statement.
if the first statement fails, the second executes
=end

def foo
  raise
end

a = foo rescue 0 # outputs rescue statement

=begin
BEGIN and END declare code to be executed at the beginning and end of a program
If there are more than one BEGIN declarations, they execute in the order that the interpreter encounters them
If there are more than one END declarations, they execute in the reverse order that the interpreter encounters them
BEGIN and END _must_ be followed by curly braces
variables defined in BEGIN / END blocks will not be visible outside the blocks
BEGIN  code will be executed regardless of any surrounding code / conditionals
END code will only be executed if the context code it is associated with is executed
END code will only be executed once if it is declared within a block / loop that is executed multiple times
=end  

if (false)
  BEGIN {
	p "if"
	a=4
  }
else
  BEGIN {puts "else"}
end

10.times {BEGIN {puts "loop"}} # only prints once

10.times {if false END {p "END"}end}