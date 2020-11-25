=begin
Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the: 1) thousands place 2) hundreds place 3) tens place 4) ones place
=end

thousands = 7168 / 1000
hundred = 7168 % 1000 / 100
tens = 7168 % 100 / 10
ones = 7168 % 10

puts thousands
puts hundred
puts tens
puts ones
