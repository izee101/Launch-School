=begin
Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.
=end

hash1 = {
  frank: "cat",
  peter: "dog",
  sally: "fish"
}

hash2 = {
  billy: "nissan",
  paul: "bmw",
  raul: "ferarri"
}

puts hash1.merge(hash2)
puts hash1
puts hash2

puts hash1.merge!(hash2)
puts hash1
puts hash2

#The difference is merge! modifies permanently, while merge does not.

#----------------------------------------------------------------------------
puts "------------------------"

cat = {name: "whiskers"}
weight = {weight: "10 lbs"}
puts cat.merge(weight)
puts cat                  # => {:name=>"whiskers"}
puts weight               # => {:weight=>"10 lbs"}
puts cat.merge!(weight)
puts cat                  # => {:name=>"whiskers", :weight=>"10 lbs"}
puts weight               # => {:weight=>"10 lbs"}
