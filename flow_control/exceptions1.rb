#!/bin/ruby


def throwIfParmLessThan1(i)
  puts "in method"
  printf("Testing whether %d is < 1: [ %s ]\n", i, i < 1)
  raise "bad arg" if i < 1
  return "good call"
end

begin
  puts throwIfParmLessThan1(4)
  puts throwIfParmLessThan1(0)
rescue
  puts "in rescue"
ensure
  puts "in ensure"
end


