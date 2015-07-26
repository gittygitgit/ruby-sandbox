#!/bin/ruby

require "mysql"
dbhandle=Mysql.connect("localhost", "root", "j6w1o2010", "test")

printf "Checking for databases...\n"

dbs = dbhandle.list_dbs

if dbs.length == 0
	puts "There are no databases\n"
else
	printf("There are %s databases\n\n",dbs.length)
	printf("Database name\n")
	printf("-------------------\n")
	dbs.each{ |d| 
		printf(d + "\n")
	}
end

