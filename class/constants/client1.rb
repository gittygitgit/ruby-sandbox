#!/bin/ruby

require 'months'

puts 'Printing value of constant MARCH from Months class...' + String(Months::MARCH)
puts 'Printing value of constant FEBRUARY from Months class...' + String(Months::FEBRUARY)
puts 'Printing value of constant JANUARY from Months class...' + String(Months::JANUARY)

puts Months.numberOf
puts Months.timesNumberOfCalled
puts Months.numberOf
puts Months.timesNumberOfCalled
puts Months.numberOf
puts Months.timesNumberOfCalled
puts Months.numberOf
puts Months.timesNumberOfCalled
