#!/bin/ruby
=begin
methods defined outside of a class are actually defined internally as private methods of the Object class
methods are associated with objects, whereas procs and lambda's are not.  procs and lambdas may be considered functions in this sense

=end