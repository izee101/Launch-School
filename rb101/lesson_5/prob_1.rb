# How would you order this array of number strings by descending numeric value?

arr = ['10', '11', '9', '7', '8']

arr.sort do |a,b|
    b.to_i <=> a.to_i
  end

# => ["11", "10", "9", "8", "7"]

=begin
    The key here is understanding that strings are compared character by character,
    so '11' will be evaluated to be lesser than '7'. In order to compare the strings
    as integers, we need to convert them to integers within the block.

    The second part of solving this problem is sorting the array in reverse order.
    To do this we simply switch the order of b and a in the block.
=end