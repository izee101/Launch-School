=begin

#Problem: Combining Arrays
  Write a method that takes two Arrays as arguments, and returns an Array that contains all of
  the values from the argument Arrays. There should be no duplication of values in the returned
  Array, even if there are duplicates in the original Arrays.

  Explicit requirements
    Input:
      - two arrays
    Output:
      - one array
    Rules:
      - no duplications allowed in final array

  Implicit requirements:
    -

  Questions:
    -

#Examples / Test Cases:

  merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

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

def merge(array_1, array_2)
  array_1 | array_2
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]