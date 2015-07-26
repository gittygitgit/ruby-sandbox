#!/bin/ruby


# Including the preprocessor stmt allows one to execute the script without preceding with ruby.

# array
temp=['1', '2']
i = 0
while i < temp.size do
  puts temp[i]
  i += 1
end


i = 0

while i < 100 do
  puts i
  i += 1

end

while i < 500 do
  puts i
  i +=1
  break
end
