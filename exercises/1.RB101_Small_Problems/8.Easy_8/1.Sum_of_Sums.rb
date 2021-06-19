=begin

#Problem: Sum of Sums
  Write a method that takes an Array of numbers and then returns the sum of the sums of each
  leading subsequence for that Array. You may assume that the Array always contains at least one
  number.



  Explicit requirements
    Input:
      -array
    Output:
      -integer
    Rules:
      -return sum of sums
      -array will always contain at least one number

  Implicit requirements:
    -

  Questions:
    -

#Examples / Test Cases:

  sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
  sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
  sum_of_sums([4]) == 4
  sum_of_sums([1, 2, 3, 4, 5]) == 35

#Data Structures
  Possible methods:
    -each
  Possible structures:
    -array

#Algorithm
  -def method with parameter (array)
  -init local var "total" = 0
  -init local var "sub_total" = 0
  -iterate through each number in array
    -increment sub_total by adding each number to it
    -increment total by adding each number to it
  -return total

   => expected return: integer
   => expected output: none

=end

#Code Implementation

def sum_of_sums(array)
  sub_total = 0
  total = 0

  array.each do |num|
    sub_total += num
    total += sub_total
  end
  total
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35