#!/bin/ruby

numAsWord=nil


x=2

numAsWord=case
when x==1 then "one"
when x==2 then "two"
when x==3 then "three"
else "many"
end

puts numAsWord # outputs x


# another format using if / elsif / else
name = if x == 1 then "one"
elsif x==2 then "two"
elsif x==3 then "three"
elsif x==4 then "four"
else "many"
end


x=3
out_str = case
when x==1 || x==2 then "one or two"
when x==3 then "three"
when x==4 || x==5 then "four or five"
else "other"
end


puts out_str # outputs three

# extract the common x== stuff
out_str = case x
when 1,2; "one or two" # 1,2 means 1 || 2
when 3; "three"
when 4,5; "four or five"
else "other"
end

puts out_str

def foo x
  case x
  when 1,2;"one or two" 
  when 3;"three"
  when 4,5;"four or five"
  else "other"
  end
end

puts foo 3

# case expression is comared to the values in each when using the === operator
# === is the case equality operator
