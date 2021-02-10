=begin

#Problem: Rotation (Part 3)
  If you take a number like 735291, and rotate it to the left, you get 352917.
  If you now keep the first digit fixed in place, and rotate the remaining digits,
  you get 329175. Keep the first 2 digits fixed in place and rotate again to
  321759. Keep the first 3 digits fixed in place and rotate again to get 321597.
  Finally, keep the first 4 digits fixed in place and rotate the final 2 digits
  to get 321579. The resulting number is called the maximum rotation of the
  original number.

  Write a method that takes an integer as argument, and returns the maximum
  rotation of that argument. You can (and probably should) use the
  rotate_rightmost_digits method from the previous exercise.

  Note that you do not have to handle multiple 0s.

  Explicit requirements
    Input:
      -integer
    Output:
      -integer
    Rules:
      -

  Implicit requirements:
    -

  Questions:
    -

#Examples / Test Cases:

  max_rotation(735291) == 321579
  max_rotation(3) == 3
  max_rotation(35) == 53
  max_rotation(105) == 15 # the leading zero gets dropped
  max_rotation(8_703_529_146) == 7_321_609_845

#Data Structures
  Possible methods:
    -delete_at
    -each
  Possible structures:
    -array

#Algorithm
  -define method with parameter (num)
  -convert number to string, then an array, save to new local var

  LOOP
    -delete array element at array[current_index], returns element
    -push returned element onto the end of the array
    -break when current_index == array.size
    -current_index += 1
  END

  -join array into string, convert string to integer and return

   => expected return: integer
   => expected output: none

=end

#Code Implementation

def max_rotation(num)
  num_arr = num.to_s.chars
  current_index = 0

  loop do
    break if current_index == num_arr.size
    num_arr.push(num_arr.delete_at(current_index))
    current_index += 1
  end
  num_arr.join.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845