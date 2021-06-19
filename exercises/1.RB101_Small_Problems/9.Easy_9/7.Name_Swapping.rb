=begin

#Problem: Name Swapping
  Write a method that takes a first name, a space, and a last name passed as a
  single String argument, and returns a string that contains the last name, a
  comma, a space, and the first name.

  Explicit requirements
    Input:
      -string
    Output:
      -string
    Rules:
      -format arg string

  Implicit requirements:
    -

  Questions:
    -

#Examples / Test Cases:

  swap_name('Joe Roberts') == 'Roberts, Joe'

#Data Structures
  Possible methods:
    -
  Possible structures:
    -

#Algorithm
  -define method with parameter (string)
  -names = split string
    -firt_name, last_name = names[0], names[1]
  -reassign string to formatted string
    -use string interpolation

   => expected return: string
   => expected output:

=end

#Code Implementation
def swap_name(string)
  names = string.split
  first_name = (names[0..-2]).join(' ')
  last_name = names[-1]
  string = "#{last_name}, #{first_name}"
end

puts swap_name('Joe Roberts') == 'Roberts, Joe'
puts swap_name('Mirsada Simon') == 'Simon, Mirsada'
puts swap_name('Isaiah Chris Clyde Simon') == 'Simon, Isaiah Chris Clyde'
puts swap_name('Harry Potter') == 'Potter, Harry'
puts swap_name('Charles Dickens Oliveras') == 'Oliveras, Charles Dickens'