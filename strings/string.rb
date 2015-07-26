def foo_string(arg1)
  # Use of a double quote uses expression interpolation
  puts "the arg is #{arg1}"
  
  puts 'the arg is #{arg1}'

end


foo_string("mike")

s1 = 'Jonathan'  
s2 = 'Jonathan'  
s3 = s1  
if s1 == s2  
  puts 'Both Strings have identical content'  
else  
  puts 'Both Strings do not have identical content'  
end  
if s1.eql?(s2)  
  puts 'Both Strings have identical content'  
else  
  puts 'Both Strings do not have identical content'  
end  
if s1.equal?(s2)  
  puts 'Two Strings are identical objects'  
else  
  puts 'Two Strings are not identical objects'  
end  
if s1.equal?(s3)  
  puts 'Two Strings are identical objects'  
else  
  puts 'Two Strings are not identical objects'  
end