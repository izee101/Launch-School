# How_Many?.rb

def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end


vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

=begin
*Problem
Input:
  -array of words
Output:
  -hash (element, occurence count)
rules:
  -array words are case sensitive
  -print each element along with occurence count

*Examples / Test Cases
  car => 4
  truck => 3
  SUV => 1
  motorcycle => 2

*Data Structures
Input: array of words
Output: Hash

*Algorithm
  -iterate through array and save unique elements into a occurences hash as keys.
  -iterate through array, count number of times each unique element appears, and save as values in occurrences hash.
  -puts hash key/value pairs to console.

*Code
=end
