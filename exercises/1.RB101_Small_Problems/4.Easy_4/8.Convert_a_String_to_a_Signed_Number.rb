=begin

#Problem: Convert a String to a Signed Number!
  In the previous exercise, you developed a method that converts simple numeric
  strings to Integers. In this exercise, you're going to extend that method to work
  with signed numbers.

  Write a method that takes a String of digits, and returns the appropriate number
  as an integer. The String may have a leading + or - sign; if the first character
  is a +, your method should return a positive number; if it is a -, your method should
  return a negative number. If no sign is given, you should return a positive number.

  You may assume the string will always contain a valid number.

  You may not use any of the standard conversion methods available in Ruby, such
  as String#to_i, Integer(), etc. You may, however, use the string_to_integer method
  from the previous lesson.

  Explicit requirements
    Input:
      -string
    Output:
      -integer
    Rules:
      -string can contain leading '+' or '-'
      -integer must reflect - signed
      -no sign = positive number

  Implicit requirements:
    -

  Questions:
    -

#Examples / Test Cases:

  string_to_signed_integer('4321') == 4321
  string_to_signed_integer('-570') == -570
  string_to_signed_integer('+100') == 100

#Data Structures
  Possible methods:
    - string_to_integer
  Possible structures:
    -

#Algorithm
  -define string_to_signed_integer with parameter (string)
  -if string[0] == '-'
      -replace with
  -elsif string[0] == '+'
  -else

   => expected return: positive or negative integer
   => expected output: none

=end

#Code Implementation
DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] } # returns array of integers
  digits.reduce { |value, digit| (value * 10) + digit } # mechanically 'joins' integers
end

def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
