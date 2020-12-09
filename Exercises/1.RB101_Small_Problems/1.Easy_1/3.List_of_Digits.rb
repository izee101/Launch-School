# List_of_Digits.rb

=begin
*Problem
Input:
  -positive integer
  -check for valid number?
Output:
  -array of digits in the number
rules:
  -order of digits remains the same

*Examples / Test Cases
puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

*Data Structures
Input:
  -number
  -string
  -array
Rules:

*Algorithm
  -convert number into a string
  -split string up into an array of chars
  -map each char to integer
  -return array of digits
*Code
=end


def digit_list(number)
  number.to_s.chars.map{|char| char.to_i}
end

# Why doesn't this work if I separate into 3 parts and reassign number variable between each step?

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true






# Alternative Solutions
def digit_list(number)
  number.to_s.split("").map {|x| x.to_i}
end

def digit_list(number)
  number.digits.reverse
end

def digit_list(number)
  digits = []
  counter = 0
  while counter < number.to_s.length
    digits << number.to_s[counter].to_i
    counter +=1
  end
  digits
end
