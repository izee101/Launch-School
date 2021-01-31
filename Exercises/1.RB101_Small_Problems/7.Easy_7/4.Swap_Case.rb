=begin

#Problem: Swap Case
  Write a method that takes a string as an argument and returns a new string in which every
  uppercase letter is replaced by its lowercase version, and every lowercase letter by its
  uppercase version. All other characters should be unchanged.
  You may not use String#swapcase; write your own version of this method.

  Explicit requirements
    Input:
      -string
    Output:
      -string
    Rules:
      -cannot use String#swapcase
      -replace lowercase chars w/ UPPERCASE
      -vice versa

  Implicit requirements:
    -

  Questions:
    -will strings only contain letters? = NO
    -should non-alphbetic chars be ignored? = YES

#Examples / Test Cases:

  swapcase('CamelCase') == 'cAMELcASE'
  swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

#Data Structures
  Possible methods:
    -
  Possible structures:
    -

#Algorithm
  -

   => expected return:
   => expected output:

=end

#Code Implementation

def swapcase(string)
  characters = string.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  characters.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'