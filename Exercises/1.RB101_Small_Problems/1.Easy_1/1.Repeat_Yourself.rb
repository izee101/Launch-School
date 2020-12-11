# Repeat_Yourself.rb

def repeat(string, number)
  number.times do
    puts string
  end
end

repeat('This method works!', 3)


=begin
*Problem
Input:
  two args (string, positive integer)
Output:
  string
rules:
  string must print as many times as the integer indicates

*Examples / Test Cases

repeat('Hello' , 3)

---output:
Hello
Hello
Hello

*Data Structures
  String
  Number

*Algorithm
  define method to puts string
  times string by number

*Code
=end
