=begin
Challenge: Given the array...

Write a program that prints out groups of words that are anagrams.

Anagrams are words that have the same exact letters in them but in a different order. Your output should look something like this:

["demo", "dome", "mode"]
["neon", "none"]
(etc)


words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

# iterate over array
# sort each word into alphabetical order
# if key exists, append current word into value (array)
# otherwise, create a new key with this sorted word

# --------------------------------------------------- #

# initialize a result hash, will populate with key value pairs as we iterate through array.
result {}

# each word will be passed as an argument to the block
words.each do |word|
   word.split('').sort.join
  # split into and array os chars, sort each word into alphabet order, join them back.
end

# --------------------------------------------------- #

# Then store in a varible "key"
result {}

words.each do |word|
   key = word.split('').sort.join
end

# --------------------------------------------------- #

# if result already has the current key?
# then push current word into the array associated with the current key instead
result {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
end

# --------------------------------------------------- #

# Otherwise, create a new key in the hash with the sorted word.
# assign the new key's value to be an array
# place current word into that array
result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

p result
# --------------------------------------------------- #

# we only want to output the values, no need to output the key

result.each_value do |v|
  puts "------"
  p v
end

# --------------------------------------------------- #

=end

# Final code
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']


result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each_value do |v|
  puts "------"
  p v
end
