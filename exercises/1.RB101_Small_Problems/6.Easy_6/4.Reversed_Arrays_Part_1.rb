=begin

#Problem: Reversed Arrays (Part 1)
  Write a method that takes an Array as an argument, and reverses its elements in place;
  that is, mutate the Array passed into this method. The return value should be the same
  Array object.
  You may not use Array#reverse or Array#reverse!.

  Note: for the test case list = ['abc'], we want to reverse the elements in the array.
    The array only has one element, a String, but we're not reversing the String itself,
    so the reverse! method call should return ['abc'].

  Explicit requirements
    Input:
      -array
    Output:
      -mutated array
    Rules:
      -reverse array elements
      -must return same array object (mutated)

  Implicit requirements:
    -

  Questions:
    -

#Examples / Test Cases:

  list = [1,2,3,4]
  result = reverse!(list)
  result == [4, 3, 2, 1] # true
  list == [4, 3, 2, 1] # true
  list.object_id == result.object_id # true

  list = %w(a b e d c)
  reverse!(list) == ["c", "d", "e", "b", "a"] # true
  list == ["c", "d", "e", "b", "a"] # true

  list = ['abc']
  reverse!(list) == ["abc"] # true
  list == ["abc"] # true

  list = []
  reverse!(list) == [] # true
  list == [] # true

#Data Structures
  Possible methods:
    -
  Possible structures:
    -array

#Algorithm
  -define method with parameter (array)
  -loop
    -

   => expected return:
   => expected output:

=end

#Code Implementation

def reverse!(array)
  left_index = 0
  right_index = -1

  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end

  array
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true