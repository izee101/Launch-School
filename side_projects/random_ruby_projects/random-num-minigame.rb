puts "Let's see if you can beat my number!"
puts "Pick a number between 1 and 10 human!"

num = Integer(gets.chomp)
rand_num = rand(1...10)
if  num > rand_num
  puts "Your number is higher than mine!"
elsif num < rand_num
  puts "Your number is lower than mine!"
else
  puts "Wow we had the same number! lol"
end
