=begin

#Problem: Multiply Lists
  Write a method that takes two Array arguments in which each Array contains a list of numbers,
  and returns a new Array that contains the product of each pair of numbers from the arguments
  that have the same index. You may assume that the arguments contain the same number of elements.


  Explicit requirements
    Input:
      -two arrays
    Output:
      -one array
    Rules:
      -arrays are equal lengths
      -multiple matching index pairs from each array
      -return products in a new array

  Implicit requirements:
    -

  Questions:
    -

#Examples / Test Cases:

  multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

#Data Structures
  Possible methods:
    -each_with_index
    -each
  Possible structures:
    -array

#Algorithm
  -def mathod with parameters (arr_1, arr_2)
  -iterate through each element in arr_2, multiply by matching index in arr_1
  -push products to a new array, return new array.

   => expected return: array of integers
   => expected output: none

=end

#Code Implementation
def multiply_list(arr_1, arr_2)
  products = []
  arr_1.each_with_index do |num, index|
    products.push(num * arr_2[index])
  end
  products
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]