def method_with_defaults
  puts "Inside method_with_defaults...without args"
end

def method_with_defaults(arg1="Hello", arg2="world", arg3="Mike")
  puts "Inside method_with_defaults"
  puts "#{arg1}, #{arg2}, #{arg3}"
end

def optionals(arg1, arg2, *opts) 
  puts arg1
  puts arg2
  opts.each do |opt|
    puts opt
  end
end

method_with_defaults(nil,nil)
method_with_defaults("blah", "blah")
method_with_defaults


optionals("Hello", " world", "one", "two", "three")