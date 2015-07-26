#!/bin/ruby

puts 'Util module included.'

module Util
  def Util.log(key, value)
    puts key + ': ' + String(value)
  end
end

