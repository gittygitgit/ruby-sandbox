#!/bin/ruby

s="A"
s << ?B
s << 67

?C.each_byte {|e,a| p "[byte-code: #{e}]"}

