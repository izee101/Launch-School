=begin

#Problem: Multiplying Two Numbers
  Create a method that takes two arguments, multiplies them together, and returns the result.

  Explicit requirements
    Input:
      - 2 integers
      - as arguments
    Output:
      - integer
    Rules:
      - input integers must in multiplied together within method

  Implicit requirements:
    - result must be the return value

  Questions:
    - output to console? = NO
    - can zero be an argument? = unclear
    - can negative integers be arguments? = unclear
    - input validation? = unclear

#Examples / Test Cases:
  multiply(5, 3) == 15


#Data Structures
  Notes:
    - method definition

  Use:
    - none

#Algorithm
  - define 'multiply' method with num1, num2 paramaters
  - multiply num1 by num2 parameter
  - return result

=end

#Code Implementation

def multiply(num1, num2)
  num1 * num2
end

multiply(5, 3) == 15
# => true

# Further Exploration
# For fun: what happens if the first argument is an Array?
# What do you think is happening here?
# --the array itself is multiplied by the number of times of the 2nd parameter. It repeats.

multiply([1, 0, 3, 0], 4)
# => [1, 0, 3, 0, 1, 0, 3, 0, 1, 0, 3, 0, 1, 0, 3, 0]