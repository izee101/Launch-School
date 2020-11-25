=begin
Given a hash of family members, with keys as the title and an array of names as the values,

use Ruby's built-in select method to gather only immediate family members' names into a new array.
=end

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

new_arr = []
family.select { |key, value|
  if key == :sisters then new_arr << value
  elsif key == :brothers then new_arr << value
  end
}

print new_arr.flatten

# output
# ["jane", "jill", "beth", "frank", "rob", "david"]
# answer is still correct, used if/else statement versus OR operator.

#----------------------------------------------------------------------------
puts "-------------------------------"

immediate_family = family.select do |k, v|
  k == :sisters || k == :brothers
end

arr = immediate_family.values.flatten

p arr

# output
# ["jane", "jill", "beth", "frank", "rob", "david"]
