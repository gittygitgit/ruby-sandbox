#!/bin/ruby
require "mysql"
mysql=Mysql.connect("localhost", "root", "j6w1o2010", "test")

mysql.query("delete from foo")
mysql.query("insert into foo (name) values ('john')")
mysql.query("insert into foo (name) values ('mike')")
mysql.query("insert into foo (name) values ('dennis')")
