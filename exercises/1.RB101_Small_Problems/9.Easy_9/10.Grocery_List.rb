=begin

#Problem: Grocery List
  Write a method which takes a grocery list (array) of fruits with quantities and
  converts it into an array of the correct number of each fruit.

  Explicit requirements
    Input:
      -array
    Output:
      -array
    Rules:
      -

  Implicit requirements:
    -

  Questions:
    -

#Examples / Test Cases:

  buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

#Data Structures
  Possible methods:
    -map
    -times
  Possible structures:
    -array

#Algorithm
  -define method with parameter (list)
  -init local var 'fruit' = each element index 0
  -init local var 'count' = each element index 1
  -transform list
    -push list number of times of count
  -flatten list and return


   => expected return: array
   => expected output: none

=end

#Code Implementation

def buy_fruit(list)
  expanded_list = []

  list.each do |item|
    fruit, quantity = item[0], item[1]
    quantity.times { expanded_list << fruit }
  end

  expanded_list
end

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]