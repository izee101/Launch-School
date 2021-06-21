number = 4783

thousands = number / 1000
hundreds = number / 100 % 10
tens = number / 10 % 10
ones = number / 1 % 10

puts thousands
puts hundreds
puts tens
puts ones

# Alternate better solution

thousands = number / 1000
hundreds = number % 1000 / 100
tens = number % 100 / 10
ones = number % 10

puts thousands
puts hundreds
puts tens
puts ones