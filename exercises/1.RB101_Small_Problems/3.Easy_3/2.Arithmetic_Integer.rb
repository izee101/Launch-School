=begin

#Problem: Arithmetic Integer
  Write a program that prompts the user for two positive integers,
  and then prints the results of the following operations on those two numbers:
  addition, subtraction, product, quotient, remainder, and power.
  Do not worry about validating the input.

  Explicit requirements
    Input:
      - 2 positive integers
    Output:
      - 6 strings
    Rules:
      - perform 6 separate operations on the two numbers

  Implicit requirements:
    - inputs given as string numbers, must convert string numbers into integers for operations
    - output strings must interpolate input variable and output variable

  Questions:
    -input validation? = NO
    -degree of accuracy, do number have to be floats? = NO
    -how to handle zero as an input?

#Examples / Test Cases:

  ==> Enter the first number:
  23
  ==> Enter the second number:
  17
  ==> 23 + 17 = 40
  ==> 23 - 17 = 6
  ==> 23 * 17 = 391
  ==> 23 / 17 = 1
  ==> 23 % 17 = 6
  ==> 23 ** 17 = 141050039560662968926103


#Data Structures
  Notes:
    -operations can be performed inline within strings

  Use:
    -strings

#Algorithm
  -get first_num from user
  -get second_num from user
  -interpolate is operation with a string

=end

#Code Implementation

def prompt(message)
  puts "==> #{message}"
end

prompt("Enter the first number:")
first_num = gets.chomp.to_i
prompt("Enter the second number:")
second_num = gets.chomp.to_i

prompt("#{first_number} + #{second_number} = #{first_number + second_number}")
prompt("#{first_number} - #{second_number} = #{first_number - second_number}")
prompt("#{first_number} * #{second_number} = #{first_number * second_number}")
prompt("#{first_number} / #{second_number} = #{first_number / second_number}")
prompt("#{first_number} % #{second_number} = #{first_number % second_number}")
prompt("#{first_number} ** #{second_number} = #{first_number**second_number}")

=begin ##### ALTERNATE SOLUTIONS #####

def prompt(str)
  puts "==> " + str
end

operators = %w[+ - * / % **]
prompt "Enter the first number:"
num1 = gets.chomp.to_i
prompt "Enter the second number:"
num2 = gets.chomp.to_i

operators.each do |o|
  prompt "#{num1} #{o} #{num2} = #{num1.public_send(o, num2)}"
end

---------

def display(output)
    puts output
end

def input
    gets.chomp.to_i
end

display("Enter the first number")
first_number = input()

display("Enter the second number")
second_number = input()

def calculate_by_operation(first_number, second_number, operation)
    first_number.send(operation, second_number)
end

operations = [:+, :-, :*, :/, :%, :**]
operations.each do |i|
    display("#{first_number} #{i} #{second_number} = #{calculate_by_operation(first_number, second_number, i)}")
end

---------

def prompt(msg)
  puts "==> #{msg}"
end
operations = %w(+ - * / % **)
prompt "Enter the first number:"
first_num = gets.chomp.to_i
prompt "Enter the second number:"
second_num = gets.chomp.to_i

operations.each do |op|
  result = first_num.send(op, second_num)
  prompt "#{first_num} #{op} #{second_num} = #{result}"
end

---------

OPERATIONS = %w(+ - / * % **)

def prompt(message)
  puts "==> #{message}"
end

prompt 'Enter the first number:'
num1 = gets.to_i
prompt 'Enter the second number:'
num2 = gets.to_i

OPERATIONS.each do |op|
  result = num1.send(op.to_sym, num2 )
  prompt "#{num1} #{op} #{num2} = #{result}"
end

---------

def add(first_num, second_num)
  "==> #{first_num} + #{second_num} = #{first_num + second_num}"
end

def subtract(first_num, second_num)
  "==> #{first_num} - #{second_num} = #{first_num - second_num}"
end

def multiply(first_num, second_num)
  "==> #{first_num} * #{second_num} = #{first_num * second_num}"
end

def divide(first_num, second_num)
  "==> #{first_num} / #{second_num} = #{first_num / second_num}"
end

def mod(first_num, second_num)
  "==> #{first_num} % #{second_num} = #{first_num % second_num}"
end

def power(first_num, second_num)
  "==> #{first_num} ** #{second_num} = #{first_num ** second_num}"
end

puts "==> Please enter the first number:"
first_num = gets.chomp.to_i

puts "==> Please enter the second number:"
second_num = gets.chomp.to_i

puts add(first_num, second_num)
puts subtract(first_num, second_num)
puts multiply(first_num, second_num)
puts divide(first_num, second_num)
puts mod(first_num, second_num)
puts power(first_num, second_num)

---------

def num_input
  pair = []
  takes = %w[first second]

  takes.each do |take|
    puts "==> Enter the #{take} number: "
    num = gets.chomp
    pair << num.to_i
  end

  pair
end

def show_arith(nums)
  operations = %w[+ - * / % **]
  operations.each do |operator|
    result = nums.reduce(operator.to_sym)
    puts "==> #{nums.first} #{operator} #{nums.last} = #{result}"
  end
end

show_arith(num_input)

---------

def prompt(str)
  puts "==> #{str}"
end

def get_first_num
  prompt "Enter the first number:"
  num = gets.chomp.to_f
end

def get_second_num
  num = ''
  loop do
    prompt "Enter the second number:"
    num = gets.chomp.to_f
    break unless num == 0
      prompt "Please enter a number other than 0"
  end

  num
end

def arithmetic(num1, num2)
  prompt "#{num1} + #{num2} = #{num1 + num2}"
  prompt "#{num1} - #{num2} = #{num1 - num2}"
  prompt "#{num1} * #{num2} = #{num1 * num2}"
  prompt "#{num1} / #{num2} = #{num1 / num2}"
  prompt "#{num1} % #{num2} = #{num1 % num2}"
  prompt "#{num1} ** #{num2} = #{num1 ** num2}"
end

first_num = get_first_num
second_num = get_second_num

arithmetic(first_num, second_num)