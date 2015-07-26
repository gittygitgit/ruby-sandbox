def twice
  yield
  yield
end

twice {puts "sdffsf"} # outputs "sdffsf" twice

def doit(a, b)
  i=a
  while(i < b)
    yield i*i
	i+=1
  end
end

=begin
method arguments may or may not be surrounded by parentheses
=end

doit(1, 5) {|e| puts e} # outputs 1, 4, 9, 16

=begin
why yield?  yield cedes control to a block
=end


# Generate n points evenly spaced around the circumference of a
# circle of radius r centered at (0,0). Yield the x and y coordinates
# of each point to the associated block.
def circle(r,n)
 n.times do |i|
   angle = Math::PI * 2 * i/n
   yield r*Math.cos(angle), r*Math.sin(angle)
 end
end

circle(1,7) {|x,y| printf "(%.2f, %.2f) ", x, y}


=begin
a method that calls yield where no block is specified will raise an exception.
to prevent this, check for a block
=end

def sequence(n, m, c)
  i, s = 0, []
  while(i < n)
    y=m*i + c
	yield y if block_given?
	s << y
	i+= 1
  end
  s
end

sequence(5, 1, 2)