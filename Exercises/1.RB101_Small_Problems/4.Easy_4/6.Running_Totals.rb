=begin

#Problem: Running Totals
  Write a method that takes an Array of numbers, and returns an Array with the same number of elements,
  and each element has the running total from the original Array.

  Explicit requirements
    Input:
      -array
    Output:
      -array
    Rules:
      - each new element in new array is a running total from original array

  Implicit requirements:
    - must acquire running total while iterating through array
    - first element always gets pushed to new array

  Questions:
    -

#Examples / Test Cases:

  running_total([2, 5, 13]) == [2, 7, 20]
  running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
  running_total([3]) == [3]
  running_total([]) == []


#Data Structures
  Possible methods:
    - map
  Possible structures:
    -array

#Algorithm
  -

   => expected return:
   => expected output:

=end

#Code Implementation

def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end

=begin

Discussion

This solution does nothing fancy; it just walks through the array calculating the running total while building the resulting array. #map makes this really easy.

Further Exploration

Try solving this problem using Enumerable#each_with_object or Enumerable#inject (note that Enumerable methods can be applied to Arrays).

=end