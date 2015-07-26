#!/usr/bin/ruby

require 'mysql'

mysql = Mysql.init()
#mysql.connect('localhost')
mysql.connect('localhost','root','j6w1o2010')

results = mysql.query("SELECT now();")

results.each{|row|; puts row;}

mysql.close()
