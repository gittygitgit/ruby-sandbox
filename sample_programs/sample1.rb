#!/bin/ruby

path_images="/cygdrive/c/users/mike/multimedia/art/original"

puts Dir.getwd
puts Dir.chdir(path_images)
puts Dir.getwd

Dir.mkdir("temp")

Dir["*"].each {|f| puts f if File.directory?(f)}

Dir.chdir("temp")

f=File.open("test.txt", "w")
[1.13, 4.22, 5.111].each{|n| f.printf("Number is %.1f.\n", n)}
f.close




