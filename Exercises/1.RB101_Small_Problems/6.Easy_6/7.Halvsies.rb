=begin

#Problem: Halvsies
  Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested
    Arrays) that contain the first half and second half of the original Array, respectively. If
    the original array contains an odd number of elements, the middle element should be placed
    in the first half Array.


  Explicit requirements
    Input:
      -one array
    Output:
      -two arrays (nested)
    Rules:
      -nested array 1 = first half of original array
      -nested array 2 = second half of original array

  Implicit requirements:
    -

  Questions:
    -

#Examples / Test Cases:

  halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
  halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
  halvsies([5]) == [[5], []]
  halvsies([]) == [[], []]

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

def halvsies(array)
  middle = (array.size / 2.0).ceil
  first_half = array.slice(0, middle)
  second_half = array.slice(middle, array.size - middle)
  [first_half, second_half]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]