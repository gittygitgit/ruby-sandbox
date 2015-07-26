#!/bin/ruby

require "mysql"

dbh=Mysql.new("localhost", "root", "j6w1o2010", "test")
rs = dbh.query("SELECT id, name FROM foo")

rs.each do |row|
printf "%s, %s\n", row[0], row[1]
end
puts "Number of rows returned: #{rs.num_rows}"

rs.free



