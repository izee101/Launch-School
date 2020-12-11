# Odd.rb

def is_odd?(number)
  number = number.abs
  if number % 2 != 0
    true
  else
    false
  end
end

# Examples/Tests
puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true


=begin
*Problem
Input:
  - integer argument(+,-,0)
Output:
  - boolean
rules:
  - method takes 1 arg
  - must return true if numbers abs is odd
  - assume arg integer is valid

*Examples / Test Cases
puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

*Data Structures
Input:
-Number
Rules:

*Algorithm
  -transform integer to abs value
  -odd check
  -if odd, return true
*Code
=end
