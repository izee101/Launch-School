=begin

#Problem: Combine Two Lists
  Write a method that combines two Arrays passed in as arguments, and returns a new Array that
  contains all elements from both Array arguments, with the elements taken in alternation.

  You may assume that both input Arrays are non-empty, and that they have the same number of
  elements.

  Explicit requirements
    Input:
      -
    Output:
      -
    Rules:
      -

  Implicit requirements:
    -

  Questions:
    -

#Examples / Test Cases:

interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

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

def interleave(array1, array2)
  result = []
  array1.each_with_index do |element, index|
    result << element << array2[index]
  end
  result
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']