=begin

#Problem: Rotation (Part 2)
  Write a method that can rotate the last n digits of a number. For example:

  Note that rotating just 1 digit results in the original number being returned.
  You may use the rotate_array method from the previous exercise if you want.
  You may assume that n is always a positive integer.

  Explicit requirements
    Input:
      -two integers
    Output:
      -integer
    Rules:
      -n is always positive
      -rotate 1 digit at a time

  Implicit requirements:
    -rotate input matches negative index

  Questions:
    -what happens if '1' is entered? == no rotation, return same number

#Examples / Test Cases:

  rotate_rightmost_digits(735291, 1) == 735291
  rotate_rightmost_digits(735291, 2) == 735219
  rotate_rightmost_digits(735291, 3) == 735912
  rotate_rightmost_digits(735291, 4) == 732915
  rotate_rightmost_digits(735291, 5) == 752913
  rotate_rightmost_digits(735291, 6) == 352917

#Data Structures
  Possible methods:
    -delete_at

  Possible structures:
    -array

#Algorithm
  -define method with parameters (number, rotate)
  -convert number to string, then an array, save to new local var
  -delete array element at negative index[rotate], returns element
  -push returned element onto the end of the array
  -join array into string, convert string to integer and return

   => expected return: integer
   => expected output:

=end

#Code Implementation

def rotate_rightmost_digits(num, rotate)
  num_arr = num.to_s.chars
  num_arr.push(num_arr.delete_at(-rotate))
  (num_arr.join).to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917