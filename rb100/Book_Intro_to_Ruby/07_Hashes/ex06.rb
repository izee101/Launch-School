=begin
Given the following code...

What's the difference between the two hashes that were created?
=end

x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}


puts my_hash
# my_hash, :x is the key, "some value" is the value.

puts my_hash2
# my_hash2, "hi there" is assigned to the variable x, which then becomes the key, "some value" is the value.




#----------------------------------------------------------------------------
puts "-------------------------------"
