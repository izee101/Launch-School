require 'pry'
=begin

#Problem: Convert a Number to a String!
  In the previous two exercises, you developed methods that convert simple numeric
  strings to signed Integers. In this exercise and the next, you're going to reverse
  those methods.

Write a method that takes a positive integer or zero, and converts it to a string
representation.

You may not use any of the standard conversion methods available in Ruby, such as
Integer#to_s, String(), Kernel#format, etc. Your method should do this the
old-fashioned way and construct the string by analyzing and manipulating the number.

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

  integer_to_string(4321) == '4321'
  integer_to_string(0) == '0'
  integer_to_string(5000) == '5000'


#Data Structures
  Possible methods:
    -map
  Possible structures:
    -hash

#Algorithm
  -init constant DIGITS with a hash literal
  -populate DIGITS with each key/value pair eg. 4=>'4'
  -define integer_to_string with parameter (num)
  -map each number to string number using digits hash
  -join the array returned from mapping

   => expected return: string representation of number
   => expected output: none

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

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'