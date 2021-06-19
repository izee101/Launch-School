=begin

#Problem: Rotation (Part 1)
  Write a method that rotates an array by moving the first element to the end of
  the array. The original array should not be modified.

  Do not use the method Array#rotate or Array#rotate! for your implementation.

  Explicit requirements
    Input:
      -array
    Output:
      -array
    Rules:
      -create new array
      -first element moves to the end of array

  Implicit requirements:
    -

  Questions:
    -

#Examples / Test Cases:

  rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
  rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
  rotate_array(['a']) == ['a']

  x = [1, 2, 3, 4]
  rotate_array(x) == [2, 3, 4, 1]   # => true
  x == [1, 2, 3, 4]                 # => true

#Data Structures
  Possible methods:
    -duplicate
    -clone
    -pop
    -push
    -prepend
    -append
  Possible structures:
    -array

#Algorithm
  -define method with parameter (array)
  -clone original array and assign to a local var
  -shift array, returns element at index 0
  -push returned element back onto array
  -return cloned array


   => expected return: array
   => expected output: none

=end

#Code Implementation

def rotate_array(array)
  array_copy = array.clone
  array_copy.push(array_copy.shift)
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true