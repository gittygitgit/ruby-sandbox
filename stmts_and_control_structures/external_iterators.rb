i = 9.downto(1)
begin
  print i.next while true * unending loop
rescue StopIteration # like catch in java
  puts "...blastoff!"
end

=begin
  ruby uses python's behavior of throwing an exceptoin when there
  are no more elements to iterate over
=end

=begin
ruby Kernel.loop method contains an implicit rescue
=end

i=9.downto(1)
loop {
  print i.next
}
puts "...blastoff"

=begin
each is used for internal iteration
next is used for external iteration
=end