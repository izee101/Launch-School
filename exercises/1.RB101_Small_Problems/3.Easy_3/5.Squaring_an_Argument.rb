=begin

#Problem: Squaring an Argument
  Using the multiply method from the "Multiplying Two Numbers" problem,
  write a method that computes the square of its argument (the square is
  the result of multiplying a number by itself).

  Explicit requirements
    Input:
      - integer
    Output:
      - integer squared
    Rules:
      -

  Implicit requirements:
    - method accepts only 1 integer parameter

  Questions:
    - output to console? = NO
    - can zero be an argument? = unclear
    - can negative integers be arguments? = YES
    - input validation? = unclear

#Examples / Test Cases:

  square(5) == 25
  square(-8) == 64


#Data Structures
  Notes:
    - method definition

  Use:
    - none

#Algorithm
   define 'square' method
  -
  -

=end

#Code Implementation

def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

p square(5) == 25
p square(-8) == 64
# => true
# => true

=begin Discussion

Our implementation relies on the previous exercise's multiply method.
The return value of multiply is the result of multiplying the two arguments
we pass to it, so we can simply pass in the same number twice, which will
return the squared value. Our square method is implicitly returning the
return value from multiply(n, n).

Further Exploration

What if we wanted to generalize this method to a "power to the n" type method:
cubed, to the 4th power, to the 5th, etc. How would we go about doing so while
still using the multiply method?
=end


def power_to_the_n(num, power)
  result = 1
  power.times {|x| result = multiply(num, result)}
  result # Need this so the result gets returned
end

p power_to_the_n(5, 3) == 125
p power_to_the_n(2, 8) == 256
# => true
# => true