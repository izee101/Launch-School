=begin

#Problem: Convert a Signed Number to a String!
  In the previous exercise, you developed a method that converts non-negative numbers
  to strings. In this exercise, you're going to extend that method by adding the
  ability to represent negative numbers as well.

Write a method that takes an integer, and converts it to a string representation.

You may not use any of the standard conversion methods available in Ruby, such as
Integer#to_s, String(), Kernel#format, etc. You may, however, use integer_to_string
from the previous exercise.

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

  signed_integer_to_string(4321) == '+4321'
  signed_integer_to_string(-123) == '-123'
  signed_integer_to_string(0) == '0'


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

DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(num)
  digits = []
  base = 10
  reducer = 1
  loop do
    digit = (num % base) / reducer
    digits << digit
    break if num == (num % base)

    base *= 10
    reducer *= 10
  end
  digits.reverse.map { |number| DIGITS[number] }.join
end

def signed_integer_to_string(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when +1 then "+#{integer_to_string(number)}"
  else         integer_to_string(number)
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'