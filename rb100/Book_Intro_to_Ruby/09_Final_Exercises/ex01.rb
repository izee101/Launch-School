# 1. Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
puts "Exercise 1"


array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array.each do |x|
   x
end
puts array.inspect           # <-- .inpect used only for print formatting


puts "----------"

# 2. Same as above, but only print out values greater than 5.
puts "Exercise 2"


greater_than_5 = []

array.each do |x|
  if x > 5
    greater_than_5.push(x)
  end
end
puts greater_than_5.inspect


puts "----------"

# 3. Now, using the same array from #2, use the select method to extract all odd numbers into a new array.
puts "Exercise 3"


odds = []

greater_than_5.select do |x|
  if x % 2 != 0
    odds.push(x)
  end
end
puts odds.inspect


puts "----------"

# 4. Append 11 to the end of the original array. Prepend 0 to the beginning.
puts "Exercise 4"


array.push(11)
array.unshift(0)

puts array.inspect


puts "----------"

# 5. Get rid of 11. And append a 3
puts "Exercise 5"


array.pop
array.push(3)

puts array.inspect


puts "----------"

# 6. Get rid of duplicates without specifically removing any one value.
puts "Exercise 6"


puts array.uniq.inspect


puts "----------"

# 7.
puts "Exercise 7"


puts "What's the major difference between an Array and a Hash?"
puts "Ans: Arrays utilize an ordered index to organize and associate data elements, while hashes uitilize key/value pair associations."
puts "Book: The major difference between an array and a hash is that a hash contains a key value pair for referencing by key."


puts "----------"

# 8.Create a Hash, with one key-value pair, using both Ruby syntax styles.
puts "Exercise 8"



pickups = {
  :Ford => "F-250",               # hash rockets older style
}

trucks = {                        # newer 1.9 style
  Ford: "F-250",
}

puts pickups
puts trucks


cars = Hash.new                  # hash construction notation for comparison
cars["Honda"] = "Civic"
puts cars


puts "----------"

# 9. Suppose you have a hash
puts "Exercise 9"

h = {a:1, b:2, c:3, d:4}

#
puts "1. Get the value of key `:b`."
puts "Ans: the value of key :b is #{h[:b]}"

#
puts "2. Add to this hash the key:value pair `{e:5}`"
h[:e] = 5
puts h

#
puts "3. Remove all key:value pairs whose value is less than 3.5"

h.delete_if { |k,v| v < 3.5 }

puts h

puts "----------"

# 10.
puts "Exercise 10"

puts "Can hash values be arrays?"
puts "Ans: yes"
puts "Example:"
cars = {
  Honda: ["Civic" , "Accord", "Pilot", "CRV"]
}
puts cars

puts ""

puts "Can you have an array of hashes? (give examples)"
puts "Ans: yes"
puts "Example:"

h1 = { Honda: "Civic", Nissan: "Altima"}
h2 = { BMW: "M3", Lexus: "ES350"}
h3 = { Ford: "F-150", Ram: "2500", GMC: "3500"}

models = [ h1, h2, h3 ]
puts models.inspect

puts "----------"

# 11.
puts "Exercise 11"

# Given the following data structures. Write a program that copies the information from the array into the empty hash that applies to the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# Note: element references can be chained
# 1. access data in array
p contact_data[0][0]     #prints joe's email
p contact_data[0][1]     #prints joe's address
p contact_data[0][2]     #prints joe's phone num

#  2. Assign new keys to the Joe hash using symbols
contacts["Joe Smith"][:email]
contacts["Joe Smith"][:address]
contacts["Joe Smith"][:phone]


# 3. Add contact_data values to the empty hash under Joe, with associated keys
contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]

# 4. Repeat for Sally, changing the key from "Joe Smith" to "Sally Johnson"
# 5. Change the first index reference from "0" to "1"
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]


puts contacts


puts "----------"

# 12. Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?
puts "Exercise 12"

puts "Joe's email is: #{contacts["Joe Smith"][:email]}"
puts "Sally's phone number is: #{contacts["Sally Johnson"][:phone]}"


puts "----------"

# 13. Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.
puts "Exercise 13"

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |word| word.start_with?("s") }
puts arr.inspect

arr.delete_if { |word| word.start_with?("s", "w") }
puts arr.inspect

puts "----------"

# 14. Take the following array:
puts "Exercise 14"

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

# and turn it into a new array that consists of strings containing one word.   # (ex. ["white snow", etc...] → ["white", "snow", etc...].
# Look into using Array's map and flatten methods, as well as String's split method.

a = a.map! { |phrases| phrases.split(" ") }
a = a.flatten

p a


puts "----------"

# 15. What will the following program output?
puts "Exercise 15"

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

# true, both hashes are the same even though they use combinations of older style and newer style hash syntax.


puts "----------"
