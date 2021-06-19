# Array_Average.rb


def average(array)
  result = (array.sum) / (array.size)
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

=begin
*Problem:
Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. The array will never be empty and the numbers will always be positive integers. Your result should also be an integer.

Input:
  -array of integers
Output:
  -number
rules:
  -assume array is never empty
  -assume numbers are always positive
clarification:
  -

*Examples / Test Cases
  puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
  puts average([1, 5, 87, 45, 8, 8]) == 25
  puts average([9, 47, 23, 95, 16, 52]) == 40

*Data Structures
choices: Array, Number
use: Array, Number

*Algorithm
  -sum all array elements, convert to floats
  -divide by size of array
  -return result
*Code
=end



# Alternate Solutions
def average(numbers)
  sum = numbers.reduce { |sum, number| sum + number }
  sum / numbers.count
end

# can also be written as numbers.reduce(:+)

def average(nums)
  nums.reduce(&:+) / (nums.size)
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40


def average(numbers)
(sum = numbers.inject(:+).to_f / numbers.length.round)
end

def get_average(marks)
  total = 0
  loop do
    marks.each {|mark| total += mark}
    break
  end
  total / marks.size
end

def average(marks)
  marks.sum / marks.size
end
