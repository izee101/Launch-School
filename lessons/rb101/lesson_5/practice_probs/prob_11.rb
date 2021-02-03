=begin
Given the following data structure use a combination of methods, including either the select or reject method,
to return a new array identical in structure to the original but containing only the integers that are multiples of 3.
=end

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

p(
arr.map do |array|
  array.select do |element|
    element % 3 == 0
  end
end
)

=begin
We know that we want to return a new array, so map is a good choice to call on the original array.
Technically you could use either select or reject for the nested arrays as both would work, however
choosing to use select makes the code a bit more readable. This is what the same solution would look
like with reject:

arr.map do |element|
  element.reject do |num|
    num % 3 != 0
  end
end
# => [[], [3], [9], [15]]

Since the method rejects elements based on the truthiness of the evaluated condition, combining reject
with the != operator seems somewhat like a double negative and is more difficult to parse than select
combined with ==.
=end