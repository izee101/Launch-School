=begin

#Problem: Double Doubles
  A double number is a number with an even number of digits whose left-side
  digits are exactly the same as its right-side digits. For example, 44, 3333,
  103103, 7676 are all double numbers. 444, 334433, and 107 are not.

  Write a method that returns 2 times the number provided as an argument, unless
  the argument is a double number; double numbers should be returned as-is.

  Explicit requirements
    Input:
      -integer
    Output:
      -inetger
    Rules:
      -multiply number by 2, unless it is a double number
      -return double numbers as it

  Implicit requirements:
    -identifying double number

  Questions:
    -should i return the same double number object or a new one?

#Examples / Test Cases:

  twice(37) == 74
  twice(44) == 44
  twice(334433) == 668866
  twice(444) == 888
  twice(107) == 214
  twice(103103) == 103103
  twice(3333) == 3333
  twice(7676) == 7676
  twice(123_456_789_123_456_789) == 123_456_789_123_456_789
  twice(5) == 10

#Data Structures
  Possible methods:
    -to_s
    -even
    -length
  Possible structures:
    -

#Algorithm
  -define method with parameter (number)
  -convert number to string, return it's length
  -if length is odd, multiply number * 2, return result
  -elsif length is even
    -slice index 0 upto left middle char
    -slice index right middle char upto last char
    -convert both slices to strings
    -check for equality
      -if not equal, multiply number * 2, return result as integer
      -if equal, return number as integer


   => expected return: integer
   => expected output: none

=end

#Code Implementation


def twice(number)
  string_number = number.to_s
  center = string_number.size / 2
  left_side = center.zero? ? '' : string_number[0..center - 1]
  right_side = string_number[center..-1]

  return number if left_side == right_side
  return number * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10    # single digits handled by center.zero? ? '' , sets to empty string if true