#!/bin/ruby

=begin
Different ways of creating a hash
=end

h = Hash.new
puts h

h = Hash[ :height, "6ft", :age, 36, :sex, "male" ]
puts h

h = { :height => "6ft", :age => 36, :sex => "male" }
puts h

h = { "height" => "6ft", "age" => 36, "sex" => "male" }
puts h
