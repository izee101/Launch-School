=begin

#Problem: Running Totals
  Write a method that takes an Array of numbers, and returns an Array with the same number of elements,
  and each element has the running total from the original Array.

  Explicit requirements
    Input:
      -array
    Output:
      -array
    Rules:
      - each new element in new array is a running total from original array

  Implicit requirements:
    - must acquire running total while iterating through array
    - first element always gets pushed to new array

  Questions:
    -

#Examples / Test Cases:

  running_total([2, 5, 13]) == [2, 7, 20]
  running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
  running_total([3]) == [3]
  running_total([]) == []


#Data Structures
  Possible methods:
    - map
  Possible structures:
    -array

#Algorithm
  -def method running_total with parameter array
  -init local variable 'sum', assigned an initial value of 0
  -call map method on array, and invoke block with parameter 'value'
    -block invocation will increment the sum by value on each iteration

   => expected return: a transformed array in which each element is a running total
   => expected output: none

=end

#Code Implementation

# def running_total(array)
#   sum = 0
#   array.map { |value| sum += value }
# end

# p running_total([2, 5, 13]) == [2, 7, 20]
# p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# p running_total([3]) == [3]
# p running_total([]) == []

=begin

Discussion

This solution does nothing fancy; it just walks through the array calculating the running total while building the resulting array. #map makes this really easy.

Further Exploration

Try solving this problem using Enumerable#each_with_object or Enumerable#inject (note that Enumerable methods can be applied to Arrays).

#Algorithm
  -def method running_total with parameter array
  -init local variable sum, assigned to integer 0
  -call each_with_object method on array, passing in an array literal as argument
  -block invocation with parameters |value, arr|
    -increment sum by the value
      - {|value, arr| sum += value}
  -return new array

   => expected return: a transformed array in which each element is a running total
   => expected output: none
=end

def running_total(array)
  sum = 0
  array.each_with_object([]) do |value, arr|
    arr << sum += value
  end
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []