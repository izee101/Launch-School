=begin
# 16.  In exercise 11, we manually set the contacts hash values one by one. Now, programmatically loop or iterate over the contacts hash from exercise 11, and populate the associated data from the contact_data array.

Hint: you will probably need to iterate over ([:email, :address, :phone]), and some helpful methods might be the Array shift and first methods.

Note that this exercise is only concerned with dealing with 1 entry in the contacts hash, like this:

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}

As a bonus, see if you can figure out how to make it work with multiple entries in the contacts hash.

.shift
.each
.first
=end

puts "Exercise 16: Challenge"

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}


=begin
contacts["Joe Smith"][:email] = contact_data.first
p contacts
p contact_data

# run shift to move data down
contact_data.shift()
p contacts
p contact_data

contacts["Joe Smith"][:address] = contact_data.first

contact_data.shift()
p contacts
p contact_data

contacts["Joe Smith"][:phone] = contact_data.first

contact_data.shift()
p contacts
p contact_data





# create shifting mechanism
def full_shift(array)
    array.shift()
end

shift_arr = []

# create shifting loop

def shifter(array)
     array.first.to_s
  while full_shift(array) != nil
     array.to_s
  end
  #shift_arr << shifter(contact_data)
end



shift_arr << shifter(contact_data)

p shift_arr


# create inserter
#contacts[][:email] = contact_data[0]



contacts.each_key { |key|
  contacts[key][:email] = ""
  contacts[key][:address] = ""
  contacts[key][:phone] = ""
}
=end

# I GIVE UP!!!!!! Here is the solution

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end

puts contacts


# Bonus Solution
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]

contacts.each_with_index do |(name, hash), idx|
  fields.each do |field|
    hash[field] = contact_data[idx].shift
  end
end

puts contacts
