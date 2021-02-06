=begin

#Problem: fizzbuzz
  Write a method that takes two arguments: the first is the starting number,
  and the second is the ending number. Print out all numbers between the two
  numbers, except if a number is divisible by 3, print "Fizz", if a number is
  divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5,
  print "FizzBuzz".


  Explicit requirements
    Input:
      -two integers
    Output:
      -string
    Rules:
      -print out all numbers between starting and ending args
      -if num is divisible by 3, print Fizz
      -if num is dividible by 5, print Buzz
      -if num divisible by 3 && 5, print FizzBuzz


  Implicit requirements:
    -

  Questions:
    -

#Examples / Test Cases:

  fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

#Data Structures
  Possible methods:
    -
    -
  Possible structures:
    -array

#Algorithm
  -define method with parameters (start, end)
  -print out all numbers in between start and end (inclusive), save in an array
  -iterate through array
    -if num / 3 == 0 && num / 5 == 0, reassign as Fizzbuzz
    -elsif num / 5 == 0, resassign as Buzz
    -elsif num / 3 == 0, reassign as Fizz
    -else print num

   => expected return:
   => expected output:

=end

#Code Implementation

def fizzbuzz(start, finish)
  numbers = [*start..finish]
  result = []

  numbers.each do |number|
    if number % 3 == 0 && number % 5 == 0
      number = 'FizzBuzz'
    elsif number % 5 == 0
      number = 'Buzz'
    elsif number % 3 == 0
      number = 'Fizz'
    else
      number
    end
    result << number
  end
  puts result.join(', ')
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz