# Sum_or_Product_of_Consecutive_Integers.rb

def compute_sum(number)
  1.upto(number).to_a.reduce(&:+)
end

def compute_product(number)
  1.upto(number).to_a.reduce(&:*)
end

puts ">> Please enter a number greater that 0:"
number = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

if operation == 's'
  sum = compute_sum(number)
  puts "The sum of the integers between 1 and #{number} is #{sum}."
elsif operation == 'p'
  product = compute_product(number)
  puts "The product of the integers between 1 and #{number} is #{product}."
else
  puts "Whoops, looks like that's an invalid operation"
end

=begin
*Problem:
  Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.
Input:
  -Number as a string
Output:
  -String
rules:
  -user interger must be > 0
  -range is from 1 up to user's integer
  -user can choose sum or product operation
  -operation applied to all integers in range
clarification:
  -data validation? (YES)
  -case matters for inputs? (dynamic)

*Examples / Test Cases
  >> Please enter an integer greater than 0:
  5
  >> Enter 's' to compute the sum, 'p' to compute the product.
  s
  The sum of the integers between 1 and 5 is 15.


  >> Please enter an integer greater than 0:
  6
  >> Enter 's' to compute the sum, 'p' to compute the product.
  p
  The product of the integers between 1 and 6 is 720.

*Data Structures
choices:
use: Array of Numbers, Strings

*Algorithm
  -get number from user
  -get operation from user
  -compute sum or product
    -define compute_sum method
    -define compute_product method
  -Control flow
    if 's' , compute_sum, save as sum, print output
    elsif 'p' , compute_product, save as product, print output
    else 'invalid'


*Code
=end
