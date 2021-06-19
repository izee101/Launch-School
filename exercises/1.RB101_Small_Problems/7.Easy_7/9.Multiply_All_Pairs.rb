=begin

#Problem: Multiply All Pairs
  Write a method that takes two Array arguments in which each Array contains a list of numbers,
  and returns a new Array that contains the product of every pair of numbers that can be formed
  between the elements of the two Arrays. The results should be sorted by increasing value.

  You may assum that neither argument is an empty Array.

  Explicit requirements
    Input:
      -two arrays
    Output:
      -one array
    Rules:
      -input arrays can be different lengths, but not empty
      -distribute array one into the array two
      -sort final array by increasing value

  Implicit requirements:
    -distributive math

  Questions:
    -

#Examples / Test Cases:

multiply_all_parts([2,4], [4,3,1,2]) == [2,4,4,6,8,8,12,16]

#Data Structures
  Possible methods:
    -each
  Possible structures:
    -array

#Algorithm
  -define method with parameters (arr_1, arr_2)
  -multiply each element in array 2 by each element in array 1
    -use iterator within an iterator
  -push results to a new array
  -sort final array by increasing value

   => expected return: sorted array of integers
   => expected output: none

=end

#Code Implementation

def multiply_all_pairs(arr_1, arr_2)
  products = []
  arr_1.each do |num1|
    arr_2.each do |num2|
      products << num1 * num2
    end
  end
  products.sort
end

p multiply_all_pairs([2,4], [4,3,1,2]) == [2,4,4,6,8,8,12,16]

=begin
## Compact Version ##

def multiply_all_parts(arr_1, arr_2)
  arr_1.product(arr_2).map { |num1, num2| num1 * num2 }.sort
end

-multiplies array1 by array2 to produce a 2D array containing pairs of combinations
-these combination pairs are then transformed by calling .map
-a block is invoked with map to multiply each pair together, while also returning result as
  a new array.
-finally .sort is called on the last returned value, (the map array), to sort in ascending order
=end
