#!/bin/ruby


dir1 = '/cygdrive/c/dev/ruby/sandbox'

dir = Dir.pwd
puts dir
Dir.chdir(dir1)
puts Dir.pwd

puts dir == dir1


thumb_dir='/cygdrive/apps/rails/foo1/public/images/thumbs'


# Dir.entries( "/apps/rails/foo1/public/images/thumbs" ).each {|i| puts Dir.index i }
# puts Dir.entries( "/apps/rails/foo1/public/images/thumbs" ).class
paths=Dir.entries( "/apps/rails/foo1/public/images/thumbs" )
paths.each { |thumb_path| puts paths.index thumb_path }

