=begin
A UUID is a type of identifier often used as a way to uniquely identify items...which may not all be created by the same system. That is,
without any form of synchronization, two or more separate computer systems can create new items and label them with a UUID with no
significant chance of stepping on each other's toes.

It accomplishes this feat through massive randomization. The number of possible UUID values is approximately 3.4 X 10E38.

Each UUID consists of 32 hexadecimal characters, and is typically broken into 5 sections like this 8-4-4-4-12 and represented as a string.

It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

Write a method that returns one UUID when called with no parameters.
=end

=begin
######## Attempt 1 ########

 require 'securerandom'
#
 def uuid_gen()
   uuid = []
   a = SecureRandom.alphanumeric(8)
   b = SecureRandom.alphanumeric(4)
   c = SecureRandom.alphanumeric(4)
   d = SecureRandom.alphanumeric(4)
   e = SecureRandom.alphanumeric(12)
   uuid.push(a,b,c,d,e)
   uuid.join('-')
 end

 p uuid_gen

# => 9GBE1yt6-9LiV-S1sx-itvf-VxsluQbPoqoz
# => vdLoBp0l-KeaE-7N1g-1RU6-VDOqpehc4CxH

- Missed implicit requirement, characters must only contain (0-9, a-f) plus hyphens!##
- My solution contains a-z, A-Z
=end



######## Attempt 2 ########
def uuid_gen
  uuid = []
  arr_uuid = [[*0..9], [*'a'..'f']]
  arr_uuid.flatten!
  a = arr_uuid.sample(8).join
  b = arr_uuid.sample(4).join
  c = arr_uuid.sample(4).join
  d = arr_uuid.sample(4).join
  e = arr_uuid.sample(12).join
  uuid.push(a, b, c, d, e)
  return uuid.join('-')
end

p uuid_gen
# => acfb6518-d69f-b1f4-291f-b46120e5dc98
# => dc4189f2-5f10-7892-307d-9c657120bfa8

# This solution works, although it can be refractored a bit.


######## LS Solution ########
def generate_UUID
  characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'f').each { |digit| characters << digit }

  uuid = ""
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uuid += characters.sample }
    uuid += '-' unless index >= sections.size - 1
  end

  uuid
end

p generate_UUID

=begin
The key to this solution is having the sections array containing integers representing the number of characters in each section.
During each iteration through the array, within the block we can call the times method on the integer for that iteration and
thus build up the UUID character by character.

This is just one possible solution to the problem, and yours may be different. However you solved it though, you will most likely
have needed to use one or more iterative methods.

Our solution ignores some complexity concerning the proper way to generate UUIDs. It has a higher probability of creating
conflicting values than you might think. See the RFC 4122 document for complete details about how to properly generate UUIDs. Better
yet, use an RFC 4122-compliant implementation of the algorithm, such as the SecureRandom#uuid method in Ruby's standard library.
=end