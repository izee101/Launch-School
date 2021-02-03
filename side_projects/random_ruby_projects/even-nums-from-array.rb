my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

my_array.each { |num| puts num if num % 2 == 0 }

puts "_____________________"

my_array.each { |num| puts num unless num % 2 != 0 }
