# When_will_I_Retire.rb

puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retire_age = gets.chomp.to_i

current_year = Time.now.year
years_until_retire = (retire_age) - (age)
retire_year = (current_year) + (years_until_retire)

puts "It's #{current_year}. You will retire in #{retire_year}."
puts "You have only #{years_until_retire} years of work to go!"

=begin
*Problem:
  Build a program that displays when the user will retire and how many years she has to work till retirement.
Input:
  -Number as a string
  -Number as a string
Output:
  - String: current year, retirement year
  - String: years left until retirement
rules:
  - output must include current year
clarification:
  - current year must be dynamic? (YES)

*Examples / Test Cases
  What is your age? 30
  At what age would you like to retire? 70

  It's 2016. You will retire in 2056.
  You have only 40 years of work to go!

*Data Structures
choices:
use: Strings, Numbers

*Algorithm
  -get inputs from user (age, retire_age), convert to integers
  -calculate years_until_retire
  -lookup current_year, add years_until_retire, save in retire_year
  -print current year, retire_year, years_until_retire
*Code
=end


# ALTERNATE SOLUTIONS

=begin
def display(output)
  puts output
end

def input
  gets.chomp.to_i
end

time = Time.new

display("What is your age?")
age = input()

display("At what age would you like to retire?")
retire = input()

years_remaining = (retire - age)
year_of_retirement = (time.year + years_remaining)

display("It's #{time.year}. You will retire in #{year_of_retirement}.")
display("You have only #{years_remaining} years of work to go!")

=end
