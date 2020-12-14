# What's_my_Bonus?.rb

def calculate_bonus(salary, boolean)
  if boolean == true
    bonus = salary / 2
  else boolean == false
    bonus = 0
  end

  bonus
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
puts calculate_bonus(100_000, true) == 50_000

=begin
*Problem:
Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.

Input:
  -Number, Boolean
Output:
  -Number
rules:
  -if boolean is true, bonus = 1/2 salary
  -if boolean is false, bonus = 0
clarification:
  -

*Examples / Test Cases
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

*Data Structures
choices:
use: Number

*Algorithm
  -if boolean = true
    bonus = salary / 2
  -else boolean =false
    bonus = 0
*Code
=end

# Alternate Solutions
def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end

def calculate_bonus(salary, is_true)
  bonus = 0
  bonus = salary/2 if is_true
end
