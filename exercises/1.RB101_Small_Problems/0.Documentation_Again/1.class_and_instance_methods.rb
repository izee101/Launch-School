# Locate the ruby documentation for methods File::path and File#path. How are they different?

# File::path class method is located under Core API -> File class -> ::path
# File#path instance method is located under Core API -> File class -> #path

puts File.path('bin')
# Class methods are called on the class

f = File.new('my-file.txt')
puts f.path
# Instance methods are called on objects