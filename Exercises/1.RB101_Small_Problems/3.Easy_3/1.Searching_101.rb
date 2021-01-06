=begin

#Problem: Searching 101
  Write a program that solicits 6 numbers from the user,
  then prints a message that describes whether or not the 6th number
  appears amongst the first 5 numbers.

  Explicit requirements
    Input:
      -6 numbers from user
      -given as strings
    Output:
      -string
      -includes interpolation
    Rules:
      -must check if 6th number is included amongst first 5 numbers

  Implicit requirements:
    -the 6th number does not appear in output array
    -the 6th number is interpolated in the output msg separately
    -number size does not matter, but index position does

  Questions:
    -

#Examples / Test Cases:

  ==> Enter the 1st number:
  25
  ==> Enter the 2nd number:
  15
  ==> Enter the 3rd number:
  20
  ==> Enter the 4th number:
  17
  ==> Enter the 5th number:
  23
  ==> Enter the last number:
  17
  The number 17 appears in [25, 15, 20, 17, 23].


  ==> Enter the 1st number:
  25
  ==> Enter the 2nd number:
  15
  ==> Enter the 3rd number:
  20
  ==> Enter the 4th number:
  17
  ==> Enter the 5th number:
  23
  ==> Enter the last number:
  18
  The number 18 does not appear in [25, 15, 20, 17, 23].

#Data Structures
  Notes:
    -Order matters to keep track of 6th number, need to search structure as well.

  Use:
    -Array

#Algorithm
  -create an empty numbers array
  -get 5 separate string numbers from user
  -convert each string number to integer
  -store each integer in the numbers array
  -get 6th number from user, store in 'last_num' variable
  -check if 'last_num' is included in numbers:
    -if true
      -puts 'The number #{last_num} appears in #{numbers}.'
    else
      -puts 'The number #{last_num} does not appear in #{numbers}.'
=end

#Code Implementation
numbers = []

puts '==> Enter the 1st number:'
numbers << gets.chomp.to_i
puts '==> Enter the 2nd number:'
numbers << gets.chomp.to_i
puts '==> Enter the 3rd number:'
numbers << gets.chomp.to_i
puts '==> Enter the 4th number:'
numbers << gets.chomp.to_i
puts '==> Enter the 5th number:'
numbers << gets.chomp.to_i
puts '==> Enter the last number:'
last_num = gets.chomp.to_i

if numbers.include?(last_num)
  puts "The number #{last_num} appears in #{numbers}."
else
  puts "The number #{last_num} does not appear in #{numbers}."
end
