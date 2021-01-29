=begin

#Problem: ddaaiillyy ddoouubbllee
  Write a method that takes a string argument and returns a new string that contains the value
  of the original string with all consecutive duplicate characters collapsed into a single
  character. You may not use String#squeeze or String#squeeze!.

  Explicit requirements
    Input:
      -string
    Output:
      -string
    Rules:
      -duplicate chars reduced to single character

  Implicit requirements:
    -

  Questions:
    -Do I have to handle double letter words? 'happy' == NO

#Examples / Test Cases:

  crunch('ddaaiillyy ddoouubbllee') == 'daily double'
  crunch('4444abcabccba') == '4abcabcba'
  crunch('ggggggggggggggg') == 'g'
  crunch('a') == 'a'
  crunch('') == ''

#Data Structures
  Possible methods:
    -chars
    -split
    -push
    -include
  Possible structures:
    -array

#Algorithm
  -define method
  -split string into array of chars
  -iterate through array
    -push chars into new array, if matches last char, then skip
  -join chars back into string


   => expected return: string
   => expected output: none

=end

#Code Implementation

def crunch(str)
  clean_array = []
  str.chars.map do |char|
    clean_array << char if clean_array.last != char
  end
  clean_array.join
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''