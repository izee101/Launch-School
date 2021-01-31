=begin

#Problem: Right Triangles
  Write a method that takes a positive integer, n, as an argument, and displays a right triangle
  whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images
  below) should have one end at the lower-left of the triangle, and the other end at the
  upper-right.

  Explicit requirements
    Input:
      -integer
    Output:
      -strings
    Rules:
      -

  Implicit requirements:
    -

  Questions:
    -

#Examples / Test Cases:

  triangle(5)

      *
     **
    ***
   ****
  *****

    triangle(9)

          *
         **
        ***
       ****
      *****
     ******
    *******
   ********
  *********

#Data Structures
  Possible methods:
    -
  Possible structures:
    -

#Algorithm
  -

   => expected return:
   => expected output:

=end

#Code Implementation

def triangle(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end

triangle(5)

    *
   **
  ***
 ****
*****
