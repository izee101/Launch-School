=begin
Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. Then write a program that does the same thing except printing the values. Finally, write a program that prints both.
=end

cars = {
  honda: "civic",
  bmw: "m3",
  nissan: "versa",
  audi: "A4"
}

# Program 1 (keys)

cars.each_key { |k| puts k }


# Program 2 (values)

cars.each_value { |v| puts v }


# Program 3 (Key, Values)

cars.each { |k,v| puts "#{k} #{v}" }

#----------------------------------------------------------------------------
puts "------------------------"

opposites = {positive: "negative", up: "down", right: "left"}

opposites.each_key { |key| puts key }
opposites.each_value { |value| puts value }
opposites.each { |key, value| puts "The opposite of #{key} is #{value}" }
