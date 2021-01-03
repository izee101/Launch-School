=begin
Given the following data structure, return a new array containing the same sub-arrays as the
original but ordered logically by only taking into consideration the odd numbers they contain.
=end

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

# The sorted array should look like this:

# [[1, 8, 3], [1, 6, 7], [1, 4, 9]]

arr.sort_by do |sub_arr|
  sub_arr.select do |num|
    num.odd?
  end
end
# [[1, 8, 3], [1, 6, 7], [1, 4, 9]]

=begin
Since the sub-arrays are compared in an 'element-wise' manner when being sorted, when looking at
the first element of each they are all equal. If we were to include the second element of each
(the even integers) in our comparison the order would be different, since 4 is less than 6, which
is less than 8.

By performing selection on the sub-arrays that we are comparing, we can compare them based on the
value of the odd integers alone.
=end