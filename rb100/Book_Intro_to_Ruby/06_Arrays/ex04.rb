=begin
What does each method return in the following example?
=end

arr = [15, 7, 18, 5, 12, 8, 5, 1]

1. arr.index(5)
  # 8
  # wrong! ---> 3. It returns the index value of the element integer 5. 
  # which is at position index 3.

2. arr.index[5]
  # error?
  # correct! --> NoMethodError

3. arr[5]
  # [5]
  # wrong! --> 8. accesses the array element at index 5.

  #NEED TO STUDY ARRAYS MORE!

#----------------------------------------------------------------------------
puts "-------------------------------"
