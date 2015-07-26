#!/bin/ruby

require "mysql"
dbhandle=Mysql.connect("localhost", "root", "j6w1o2010")

p "host info"
p "----------"
print dbhandle.get_host_info + "\n\n"

p "proto info"
p "----------"
print "#{dbhandle.get_proto_info()} \n\n}"

p "server info"
p "----------"
print dbhandle.get_server_info() + "\n\n"

p "server status"
p "----------"
print dbhandle.stat() + "\n\n"