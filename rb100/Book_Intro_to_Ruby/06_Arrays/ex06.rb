=begin
You run the following code...

names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] = 'jody'

...and get the following error message:

TypeError: no implicit conversion of String into Integer
  from (irb):2:in `[]='
  from (irb):2
  from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'

What is the problem and how can it be fixed?
=end

# the names array expects an integer as an argument for accessing the index position that contains the element 'margaret'.
# Should be ...

names = ['bob', 'joe', 'susan', 'margaret']
names[3] = 'jody'

p names
# => ["bob", "joe", "susan", "jody"]

#----------------------------------------------------------------------------
puts "-------------------------------"
