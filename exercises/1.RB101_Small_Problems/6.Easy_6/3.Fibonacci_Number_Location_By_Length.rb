=begin

#Problem: Fibonacci Number Location By Length
  The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the
  first 2 numbers are 1 by definition, and each subsequent number is the sum of the two previous
  numbers. This series appears throughout the natural world.

  Computationally, the Fibonacci series is a very simple series, but the results grow at an
  incredibly rapid rate. For example, the 100th Fibonacci number is 354,224,848,179,261,915,075
  -- that's enormous, especially considering that it takes 6 iterations before it generates the
  first 2 digit number.

  Write a method that calculates and returns the index of the first Fibonacci number that has the
  number of digits specified as an argument. (The first Fibonacci number has index 1.)

  Explicit requirements
    Input:
      -integer
    Output:
      -integer (index)
    Rules:
      -calculate & return index of 1st fib number that has number of digits specified
      -argument is always > 2

  Implicit requirements:
    -

  Questions:
    -

#Examples / Test Cases:

  find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
  find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
  find_fibonacci_index_by_length(10) == 45
  find_fibonacci_index_by_length(100) == 476
  find_fibonacci_index_by_length(1000) == 4782
  find_fibonacci_index_by_length(10000) == 47847

#Data Structures
  Possible methods:
    -
  Possible structures:
    -loop

#Algorithm
  -define method with parameter (fib_num_length)
  -create fib number loop
  -loop until current fib number size/length == (fib_num_length)
  -return current index at that number

   => expected return: integer representing index of 1st fib number that matches method param length
   => expected output: none

=end

#Code Implementation

def find_fibonacci_index_by_length(number_digits)
  first = 1
  second = 1
  index = 2

  loop do
    index += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= number_digits

    first = second
    second = fibonacci
  end

  index
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847