#!/bin/ruby

s="|dsfsdf|234324|sdfsfd|"

s=s<<"2342342|"                     # concat to end of s
s=s.concat "sdfsfsds|"              # concat to end of s
s.insert(0,"|sdfsfsfd")             # insert to beg of s
s.insert(s.index("234"),"hello|")   # insert at given index
s.slice(s.index("2"),6)             # returns substring, leaves s in place
s[s.slice(s.index("2"),6)]          # substring, leaves s in place
s.slice!(s.index(/\|234/),7)        # removes substr from string


s="|hello|world|"
s.insert(s.index("world"),"there|")
s.eql?("|hello|there|world|")       # returns true

s="what's up doc"
p s.length                          # 13
p s.size

s=""
p s.empty?                          # true
s<<" "
p s.empty?                          # false

s="hello"

p s.index('l')                      # 2
p s.index("l")                      # 2
s.index(?l)                         # 2
s.index(?l, 3)                      # 3 index of first l on or after index 3
s.index('foo')                      # nil non-present string
s.rindex(?o)                        # 4 right-index of hello
s.rindex(?l)                        # 3
s.rindex(?l,2)                      # 2 right index of l on or before 2

s="hello"
s.start_with? "hell"               # true
s.end_with? "llo"                  # true
s.include? "ell"                   # true
s.include? ?l                      # true

"hello" =~ /ll/                    # 2
"hello" !~ /ll/                    # false
"hello" !~ /fs/                    # true
"hello".match(/ll/) {|m| p m.to_s} # ll

"hello there world!".split         # ["hello","there","world!"]
"hello,there,world!".split(",")    # ["hello","there","world!"]
"boo I like my cat boo".sub("boo","gee") # gee I like my cat boo
"boo I like my cat boo".gsub("boo","gee") # gee I like my cat gee

"hello".sub!(/(.)(.)/,'\2\1')      # swap first and second letters
"hello".sub!(/(.)(.)/,"\\2\\1")      # swap first and second letters, use double slashes for double quotes









