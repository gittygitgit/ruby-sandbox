def test_w_return(arg1)
  return "returning " + arg1  
end


def test_wo_return(arg1)
  #note we don't use the return keyword
  "returning " + arg1
end

puts test_w_return("string")
puts test_wo_return("string")