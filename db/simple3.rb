#!/bin/ruby

require "mysql"
dbhandle=Mysql.connect("localhost", "root", "j6w1o2010", "test")

rs= dbhandle.query("SELECT id, name FROM foo")

while row = rs.fetch_row do
printf "%s, %s\n", row[0], row[1]
end
puts "Number of rows returned: #{rs.num_rows}"

rs.free

