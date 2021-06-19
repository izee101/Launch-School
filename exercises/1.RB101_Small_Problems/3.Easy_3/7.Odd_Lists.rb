=begin

#Problem: Odd Lists
  Write a method that returns an Array that contains every other element of an Array that is passed in as an argument.
  The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

  Explicit requirements
    Input:
      - array
    Output:
      - array of even indexed elements
    Rules:
      - Return even indexes starting from 0
      return empty string if given empty string

  Implicit requirements:
    -

  Questions:
    - what if the input array is empty?
    - does zero count as even or odd?

#Examples / Test Cases:

  oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
  oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
  oddities(['abc', 'def']) == ['abc']
  oddities([123]) == [123]
  oddities([]) == []


#Data Structures
  Notes:
    -possible methods:
    each_with_index
    select


  Use:
    -Array

#Algorithm
  -Define method oddities with parameter arr
  -Iterate through array
  -Select elements with even indexes
  -Place elements into an array
  -Return array
  -
=end

#Code Implementation
def oddities(arr)
  odd_index = []
  arr.each_with_index{ |e, i| odd_index << e if i.even?}
  odd_index
end

oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []

def oddities(arr)
  arr.select do |ele|
    arr.index(ele).even?
  end
end

oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []

{one: [123], two: [530], three: [1349]}