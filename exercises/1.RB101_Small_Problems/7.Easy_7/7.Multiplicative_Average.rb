=begin

#Problem: Multiplicative Average
  Write a method that takes an Array of integers as input, multiplies all the numbers together,
  divides the result by the number of entries in the Array, and then prints the result rounded
  to 3 decimal places. Assume the array is non-empty.

  Explicit requirements
    Input:
      -array
    Output:
      -integer
    Rules:
      -accepts array of integers
      -multiply all the array elements together
      -divide result by number of entries
      -round result to 3 decimal places

  Implicit requirements:
    -

  Questions:
    -

#Examples / Test Cases:

  show_multiplicative_average([3, 5]) == 7.500
  show_multiplicative_average([6]) == 6.000
  show_multiplicative_average([2, 5, 7, 11, 13, 17]) == 28361.667

#Data Structures
  Possible methods:
    -round
    -reduce/inject
  Possible structures:
    -array

#Algorithm
  -define method with parameter (array)
  -init local var "result", with initial value of zero
  -multiply all array elements together, save to "result"
    -use reduce(&:*)
  -divide result by number of array elements, save to "average"
    -obtain the size/length of the array, divide by number returned.

   => expected return: nil
   => expected output: integer

=end

#Code Implementation

def show_multiplicative_average(array)
  result = array.reduce(&:*).to_f
  average = result / array.size
  puts "The result is #{format('%.3f', average)}"
end

p show_multiplicative_average([3, 5]) # == 7.500
p show_multiplicative_average([6]) # == 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # == 28361.667