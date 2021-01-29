=begin

#Problem: Bannerizer
  Write a method that will take a short line of text, and print it within a box.

  Explicit requirements
    Input:
      -string
    Output:
      -series of strings (ascii art)
    Rules:
      -

  Implicit requirements:
    -all lines in box have to auto change width to match text

  Questions:
    -Will input always fit in terminal windows? == YES
    -should box autochange width to match text? == YES

#Examples / Test Cases:

print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

print_in_box('')
+--+
|  |
|  |
|  |
+--+

#Data Structures
  Possible methods:
    -puts
  Possible structures:
    -

#Algorithm
  -

   => expected return: nil
   => expected output: input string enclosed within box

=end

#Code Implementation

def print_in_box(message)
  horizontal_rule = "+#{'-' * (message.size + 2)}+"
  empty_line = "|#{' ' * (message.size + 2)}|"

  puts horizontal_rule
  puts empty_line
  puts "| #{message} |"
  puts empty_line
  puts horizontal_rule
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
