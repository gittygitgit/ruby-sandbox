#!/bin/ruby

thumbs=Dir.entries("/apps/rails/foo1/public/images/thumbs")



# thumbs.each { |thumb| puts thumb.gsub(/[ ]/, "_") }
# thumbs.each { |thumb| if thumb[/jpg$/]; puts thumb; end }
# thumbs.each { |thumb| if thumb[/jpg$/]; cp=thumb.gsub(/[ ]/, "_"); puts cp; end }
thumbs.each { |thumb| if thumb[/jpg$/]; cp=thumb.gsub(/[ ]/, "_"); File.rename(thumb, cp); puts cp; end }
