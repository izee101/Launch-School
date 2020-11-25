=begin
What will the following programs return?
What is the value of arr after each?
=end

1. arr = ["b", "a"]
      # ["b", "a"]
   arr = arr.product(Array(1..3))
      # Array(1..3) returns the array of [1, 2, 3]
      # .product combines both arrays
      # [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
   arr.first.delete(arr.first.last)
      # .first method calls the 1st array element, which is array ["b", 1]
      # .delete will remove 1 from ["b", 1]
      # leaving [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

    # ans:
    # returns: 1
    # value: [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]



2. arr = ["b", "a"]
      # ["b", "a"]
   arr = arr.product([Array(1..3)])
      # [ ] wraps the returned values into a new array
      # returns an array that is 3 levels deep
      # [["b", [1, 2, 3]], ["a", [1, 2, 3]]]
   arr.first.delete(arr.first.last)
      # [1, 2, 3]

    # ans:
    # returns: [1, 2, 3]
    # value: [["b"], ["a", [1, 2, 3]]]
#----------------------------------------------------------------------------
puts "-------------------------------"

1. returns 1
    arr =  [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

2. returns [1, 2, 3]
    arr = [["b"], ["a", [1, 2, 3]]]
