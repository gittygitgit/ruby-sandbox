# p039symbol.rb  
# use the object_id method of class Object  
# it returns an integer identifier for an object  
puts "string".object_id  
puts "string".object_id  
puts :symbol.object_id  
puts :symbol.object_id 

# there is only one copy of a symbol in memory
# even though "string" and "string" are equal in terms of the == operator,
# they are different objects.  However, there is only one copy of 
# :string in memory
puts Symbol.all_symbols
