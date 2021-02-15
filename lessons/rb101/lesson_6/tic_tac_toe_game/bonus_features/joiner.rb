# joiner.rb

def joinor(arr, delimiter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first.to_s
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end

p joinor([1]) == "1"
p joinor([1, 2]) == "1 or 2"
p joinor([1, 2, 3]) == "1, 2, or 3"
p joinor([1, 2, 3], '; ') == "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and') == "1, 2, and 3"

=begin ##### MY SOLUTION, too bulky #####

###################### HELPER METHODS ########################
def arr_length1(arr, _, _)
  dup_arr = arr.dup.last.to_s
end

def arr_length2(arr, _, word_separator)
  dup_arr = arr.dup
  dup_arr.last.to_s

  last_element = dup_arr.pop
  suffix = "#{word_separator} #{last_element}"
  "#{dup_arr.first} #{suffix}"
end

def arr_longer(arr, separator, word_separator)
  dup_arr = arr.dup
  dup_arr.last.to_s

  last_element = dup_arr.pop
  suffix = "#{word_separator} #{last_element}"
  arr_with_separator = dup_arr.map do |ele|
    "#{ele}#{separator} "
  end
  formatted_arr = arr_with_separator << suffix
  formatted_arr.join
end

###################### MAIN METHOD ########################
def joinor(arr, separator = ',', word_separator = 'or')
  case arr.length
  when 1
    arr_length1(arr, separator, word_separator)
  when 2
    arr_length2(arr, separator, word_separator)
  else
    arr_longer(arr, separator, word_separator)
  end
end
=end



=begin

#Problem: joiner
  If we run the current game, we'll see the following prompt:

  => Choose a position to place a piece: 1, 2, 3, 4, 5, 6, 7, 8, 9

  This is ok, but we'd like for this message to read a little better. We want to
  separate the last item with a "or", so that it reads:

  => Choose a position to place a piece: 1, 2, 3, 4, 5, 6, 7, 8, or 9

  Currently, we're using the Array#join method, which can only insert a
  delimiter between the array elements, and isn't smart enough to display
  a joining word for the last element.

  Write a method called joinor that will produce the following result:
  [SEE EXAMPLES/TEST CASES]
  Then, use this method in the TTT game when prompting the user to mark a square

  Explicit requirements
    Inputs: up to 3
      -array, string, string
    Output: 1
      -string
    Rules:
      -accepts 1 required argument, and 2 optional arguments
      -required arg must be an array
      -optional arg 1 is a delimter override between all elements
      -optional arg 2 is a delimiter override between last two elements

  Implicit requirements:
    -if array with only 2 elements, insert 'or' delimeter between them
    -if >2 elements, insert commas between every element, insert 'or' delimeter
      between last 2 elements

  Questions:
    -what to do with an array of only 1 element?

#Examples / Test Cases:

  joinor([1, 2])                   # => "1 or 2"
  joinor([1, 2, 3])                # => "1, 2, or 3"
  joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
  joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"

#Data Structures
  Possible methods:
    -
  Possible structures:
    -

#Algorithm
  -define method joinor with 3 parameters (arr, separator, last_element)
  -duplicate original array
  -get last element in array, convert to string
    -if dup_arr length == 1
      -return dup_arr as a string
    -elsif dup_arr length == 2
      -return formatted_arr
    else
      -return formatted_arr

   => expected return: nil
   => expected output: formatted string as defined by arguments

=end

# Code Implementation

# def joinor(arr, separator = ',', word_separator = 'or')
#   dup_arr = arr.dup
#   last_element = dup_arr.last.to_s

#   if dup_arr.length == 1
#     return dup_arr.join
#   elsif dup_arr.length == 2
#     last_element = dup_arr.pop
#     suffix = word_separator + ' ' + last_element.to_s
#     formatted_arr = dup_arr.first.to_s + ' ' + suffix
#     return formatted_arr
#   else
#     last_element = dup_arr.pop
#     suffix = word_separator + ' ' + last_element.to_s
#     arr_with_separator = dup_arr.map do|ele|
#       ele.to_s + separator + ' '
#     end
#     formatted_arr = arr_with_separator << suffix
#     return formatted_arr.join
#   end
# end
