=begin
How do you return the word "example" from the following array?
=end

arr = [["test", "hello", "world"],["example", "mem"]]

p arr.flatten.select { |x| x == "example" }

# ends up returning an array containing "example"
# => ["example"]

#----------------------------------------------------------------------------
puts "-------------------------------"


arr.last.first
# => "example"
