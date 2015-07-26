#!/bin/ruby


=begin
-Object
   | 
    -Number
       |
        -Integer
           |
            -Fixnum

=end


# find number of levels


def numLevels(o)
  levels=0
  if o.nil? then
    return levels
  end

  levels +=1
  klazz=o.class

  sup=klazz.superclass

  if !sup.nil? then
    levels +=1
  end

end


def testSup(klazz)
  puts "testSup"
  

end


