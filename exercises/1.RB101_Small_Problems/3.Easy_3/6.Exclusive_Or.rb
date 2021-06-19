=begin

#Problem: Exclusive Or
  The || operator returns a truthy value if either or both of its operands are truthy, a falsey value if both operands are falsey.
  The && operator returns a truthy value if both of its operands are truthy, and a falsey value if either operand is falsey. This
  works great until you need only one of two conditions to be truthy, the so-called exclusive or.

In this exercise, you will write a function named xor that takes two arguments, and returns true if exactly one of its arguments is
truthy, false otherwise. Note that we are looking for a boolean result instead of a truthy/falsy value as returned by || and &&.

  Explicit requirements
    Input:
      - 2 objects
    Output:
      - boolean
    Rules:
      - returns true if exactly 1 args is truthy
      - returns false otherwise

  Implicit requirements:
    - double true == false

  Questions:
    -

#Examples / Test Cases:

  xor?(5.even?, 4.even?) == true
  xor?(5.odd?, 4.odd?) == true
  xor?(5.odd?, 4.even?) == false
  xor?(5.even?, 4.odd?) == false


#Data Structures
  Notes:
    - method definition

  Use:
    -

#Algorithm
  - define xor method that accepts 2 parameters
  - return true if param1 is true and param2 is false
  - return true if param2 is true and param1 is false
  - false

=end

#Code Implementation

def xor?(obj1, obj2)
  return true if obj1 && !obj2
  return true if obj2 && !obj1
  false
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false
p xor?(5, 4) == false
