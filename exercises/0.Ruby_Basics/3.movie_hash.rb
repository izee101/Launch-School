#Write a program that uses a hash to store a list of movie titles with the year they came out.
#Then use the puts command to make your program print out the year of each movie to the
#screen.

movies = Hash.new

movies[:Raya] = 2021
movies[:Demon_Slayer] = 2020
movies[:Avengers] = 2019

puts movies[:Raya]
puts movies[:Demon_Slayer]
puts movies[:Avengers]