# Tip_calculator.rb

print "What is the bill?: $"
bill = gets.chomp.to_f

tip_percent = ""
print "What percent would you like to tip? (%): #{tip_percent}"
tip_percent = ((gets.chomp.to_f) / 100).round(2)

calc_tip = (bill * tip_percent).round(2)
calc_total = (calc_tip + bill).round(2)

puts "The tip is $#{calc_tip}"
puts "The total is $#{calc_total}"





=begin
*Problem:
  Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.

Input:
  - Numbers as strings
Output:
  - String containing numbers
rules:
  - output both bill & tip
clarification:
  - data validation? (NO)

*Examples / Test Cases
  What is the bill? 200
  What is the tip percentage? 15

  The tip is $30.0
  The total is $230.0

*Data Structures
choices: String, Numbers
use: String, Numbers

*Algorithm
  -get bill amount, convert to integer
  -get tip percentage as integer, convert to decimal
  -calculate tip amount
  -sum the tip and bill

*Code
=end


# ALTERNATE SOLUTIONS

=begin
def display(output)
  puts output
end

def input
  gets.chomp.to_f
end

display("What is the bill?")
bill = input()

display("What is the tip percentage?")
percent = input()

tip = bill * (percent / 100)

display("the tip is £#{format('%.2f', tip)}")
display("the total is £#{format('%.2f', (bill + tip))}")
=end
