=begin
Write a program called age.rb that asks a user how old they are and then tells them how old they will be in 10, 20, 30 and 40 years. Below is the output for someone 20 years old.

=end

# age.rb
puts "My Solution"

puts "How old are you?"
age = gets.chomp.to_i

calc_age10 = age + 10
calc_age20 = age + 20
calc_age30 = age + 30
calc_age40 = age + 40

puts "In 10 years you will be: #{calc_age10}"
puts "In 20 years you will be: #{calc_age20}"
puts "In 30 years you will be: #{calc_age30}"
puts "In 40 years you will be: #{calc_age40}"

#----------------------------------------------------------------------------
puts "-------------------------------"
puts "Book Solution"

puts "How old are you?"
age = gets.chomp.to_i
puts "In 10 years you will be:"
puts age +  10
puts "In 20 years you will be:"
puts age +  20
puts "In 30 years you will be:"
puts age +  30
puts "In 40 years you will be:"
puts age +  40
