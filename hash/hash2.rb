#!/bin/ruby

a = { :age => 36, :height => '6ft', :name => "mike grudkowski" }

puts 'Does hash a have key age? ' +  String(a.has_key? :age)
puts 'Does hash a have value of 35? ' +  String(a.has_value? 35)
puts 'Does hash a have value of 36? ' +  String(a.has_value? 36)
puts a[:age]
puts a.keys
puts a.values

v=a.values_at :age, :name

puts v

v.each {|e| puts e}
v.each {|k,v| puts 'k:' + k.to_s + ', v:' + v.to_s}



a.each_key {|k| puts k}
a.each_value {|v| puts v}
