#!/bin/ruby

h=Hash.new # create new hash

h["one"]=1
h["two"]=2

puts h # outputs "one" => 1

# hash literal
h={ "one" => 1, "two" => 2 }

# symbols are more efficient that strings as hash keys 
h={ :one => 1, :two => 2 }

