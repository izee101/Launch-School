=begin
def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

answer = nil
num1 = nil
num2 = nil

loop do
  loop do
      puts ">> Please enter a positive or negative integer:"
      num1 = gets.chomp.to_i
      break if num1.positive? || num1.negative?
      puts ">> Invalid input. Only non-zero integers are allowed."
  end

  loop do
      puts ">> Please enter another positive or negative integer:"
      num2 = gets.chomp.to_i
      break if num1.positive? || num1.negative?
      puts ">> Invalid input. Only non-zero integers are allowed."
  end

      break if num1.negative? || num2.negative?
      puts ">> Sorry. One integer must be positive, one must be negative."
      puts ">> Please start over."
end

answer = num1 + num2
puts "Here is your result: #{num1} + #{num2} = #{answer}"
=end

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def read_number
  loop do
    puts '>> Please enter a positive or negative integer:'
    number = gets.chomp
    return number.to_i if valid_number?(number)
    puts '>> Invalid input. Only non-zero integers are allowed.'
  end
end

first_number = nil
second_number = nil

loop do
  first_number = read_number
  second_number = read_number
  break if first_number * second_number < 0
  puts '>> Sorry. One integer must be positive, one must be negative.'
  puts '>> Please start over.'
end

sum = first_number + second_number
puts "#{first_number} + #{second_number} = #{sum}"
