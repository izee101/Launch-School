=begin
Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100.
=end

puts "Please enter a number between 0 and 100"
num = gets.chomp.to_i

if (num >= 0) && (num <= 50)
  puts "#{num} is between 0 and 50 "
elsif (num >= 51) && (num <= 100)
  puts "#{num} is between 51 and 100"
else
  puts "#{num} is NOT between 0 and 100!"
end


#----------------------------------------------------------------------------
puts "-------------------------------"
