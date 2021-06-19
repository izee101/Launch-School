=begin

#Problem: Short Long Short
  Write a method that takes two strings as arguments, determines the longest of the two strings,
  and then returns the result of concatenating the shorter string, the longer string, and the shorter
  string once again. You may assume that the strings are of different lengths.

  Explicit requirements
    Input:
      -2 strings
    Output:
      -1 string
    Rules:
      -must find longest string
      -return strings concatenated together in format:
      --'short str' + 'long str' + 'short str'

  Implicit requirements:
    -one of the strings can be empty
    -strings are different lengths

  Questions:
    -are strings always different lengths? = YES


#Examples / Test Cases:

  short_long_short('abc', 'defgh') == "abcdefghabc"
  short_long_short('abcde', 'fgh') == "fghabcdefgh"
  short_long_short('', 'xyz') == "xyz"


#Data Structures
  Notes:
    -possible methods:
      -size
      -length
  Use:
    -length

#Algorithm
  -define short_long_short method with parameters str1, str2
  -compare str1 to str2
  -if str1 < str2
    str1 + str2 + str1
  elsif str1 > str2
    str2 + str1 + str2
  else
    puts 'strings are the same length'

   => expected return: 'short str_long str_short str' or nil (if strings are even)
   => expected output: none

=end

#Code Implementation

def short_long_short(str1,str2)
  if str1.length < str2.length
    str1 + str2 + str1
  else
    str2 + str1 + str2
  end
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"

### Alt Solution ###

=begin

  def short_long_short(string1, string2)
    arr = [string1, string2].sort_by { |el| el.length }
    arr.first + arr.last + arr.first
  end


  This method is perhaps too clever for its own good and makes it hard to understand what this method is trying to do.
  Though a little longer, the if/else/end solution from earlier is much clearer.

=end