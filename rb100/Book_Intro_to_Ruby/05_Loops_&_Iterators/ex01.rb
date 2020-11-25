=begin
What does the each method in the following program return after it is finished executing?
=end

x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end


# ans: [2, 3, 4, 5, 6]
# This answer is wrong because "each" always returns the original array it was called  # on.

#----------------------------------------------------------------------------
puts "-------------------------------"

# => [1, 2, 3, 4, 5]
