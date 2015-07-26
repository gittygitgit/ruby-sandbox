#!/bin/ruby

# ------------------------------
# single quotes
# ------------------------------

# use backslashes to break up a long string
puts 'sdfsfsfds'\
'dsafsafsafsafsd'\
'asdfsafafsfda.'

# single quotes don't interpret escape sequences
printf 'dsfsd\nfsafsaf'


# double quotes do
printf "dsfsfsdsf\nsdfasf"

# string interpolation
printf "sdjsfilisejfkl#{1+1}fasfsafsa"

$x=45
printf "sdfsdfsfs#{$x}dsfsfd."

# spanning multiple lines
printf "dsfsfsdf\
sfdsafsafd\
asfdsafsaf"

