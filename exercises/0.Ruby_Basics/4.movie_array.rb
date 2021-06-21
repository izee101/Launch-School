#Use the dates from the previous example and store them in an array.
#Then make your program output the same thing as exercise 3.

movies = Hash.new

movies[:Raya] = 2021
movies[:Demon_Slayer] = 2020
movies[:Avengers] = 2019

movies_arr = []
movies.each do |movie, year|
  movies_arr << year
end

puts movies_arr