=begin

#Problem: Does My List Include This?
  Write a method named include? that takes an Array and a search value as arguments. This method
  should return true if the search value is in the array, false if it is not. You may not use
  the Array#include? method in your solution.

  Explicit requirements
    Input:
      -array, search value
    Output:
      -boolean
    Rules:
      -

  Implicit requirements:
    -

  Questions:
    -

#Examples / Test Cases:

  include?([1,2,3,4,5], 3) == true
  include?([1,2,3,4,5], 6) == false
  include?([], 3) == false
  include?([nil], nil) == true
  include?([], nil) == false

#Data Structures
  Possible methods:
    -
  Possible structures:
    -

#Algorithm
  -

   => expected return:
   => expected output:

=end

#Code Implementation

###LS SOLUTION 1####
def include?(array, value)
  !!array.find_index(value)
end

###LS SOLUTION 2####
def include?(array, value)
  array.each { |element| return true if value == element }
  false
end


p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false