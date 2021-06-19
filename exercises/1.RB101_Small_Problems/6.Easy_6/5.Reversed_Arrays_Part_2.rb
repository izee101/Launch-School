=begin

#Problem: Reversed Arrays (Part 2)
  Write a method that takes an Array, and returns a new Array with the elements of the original
  list in reverse order. Do not modify the original list.

  You may not use Array#reverse or Array#reverse!, nor may you use the method you wrote in the
  previous exercise.



  Explicit requirements
    Input:
      -array
    Output:
      -array
    Rules:
      -reverse elements
      -return new array

  Implicit requirements:
    -

  Questions:
    -

#Examples / Test Cases:

  reverse([1,2,3,4]) == [4,3,2,1]          # => true
  reverse(%w(a b e d c)) == %w(c d e b a)  # => true
  reverse(['abc']) == ['abc']              # => true
  reverse([]) == []                        # => true

  list = [1, 3, 2]                      # => [1, 3, 2]
  new_list = reverse(list)              # => [2, 3, 1]
  list.object_id != new_list.object_id  # => true
  list == [1, 3, 2]                     # => true
  new_list == [2, 3, 1]                 # => true

#Data Structures
  Possible methods:
    -
  Possible structures:
    -

#Algorithm
  -define method
  -loop thrrough array backwards
  -push each element into a new array
  -return new array

   => expected return: new array in reversed order
   => expected output:

=end

#Code Implementation

def reverse(array)
  counter = array.size
  index = -1
  reversed_arr = []

  loop do
    break if counter == 0
    reversed_arr << array[index]
    index -= 1
    counter -= 1
  end

end

p reverse([1,2,3,4]) #== [4,3,2,1]          # => true
# p reverse(%w(a b e d c)) #== %w(c d e b a)  # => true
# p reverse(['abc']) #== ['abc']              # => true
# p reverse([]) #== []                        # => true

# list = [1, 3, 2]                      # => [1, 3, 2]
# new_list = reverse(list)              # => [2, 3, 1]
# p list.object_id != new_list.object_id  # => true
# p list == [1, 3, 2]                     # => true
# p new_list == [2, 3, 1]                 # => true