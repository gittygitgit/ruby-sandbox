#!/bin/ruby

require "mysql"

dbhandle=nil

def doTable(t) 
	p defined? dbhandle
	p t
end

if ARGV.length != 1
	printf("Wrong number of arguments provided [%s]\n",ARGV.length)
	printf("Expected usage: %s [dbName]\n", $0)
	Process.exit
end

dbName=ARGV[0]

print "Connecting to database [#{dbName}]..."
begin
	dbhandle=Mysql.connect("localhost", "root", "j6w1o2010", dbName)
	print "connected.\n\n\n"
rescue
	printf("Unable to connect to database [%s]\n", dbName)
	Process.exit
end

tables=dbhandle.list_tables()

p "tables"
p "------------------------------"
if tables.length == 0; then
	p '(none)'
else
	tables.each {|t| 
		doTable t
	}
end


