=begin
  Contents:
    Creating Array
    Access by Index
    Arrays of Non-Numbers
    Arrays of Arrays
    Introduction to Hashes
    Using Hash.new
    Adding to a Hash
    Accessing Hash Values
    Iterating Over Arrays
    Iterating Over Multidimensional Arrays
    Iterating Over Hashes
=end

puts "### Creating Array ###"
array = [1,2,3,4,5,6,7,8,9]
print array
puts

puts "### Access by Index ###"
array = [1,2,3,4,5,6,7,8,9]
puts array[2]

puts "### Arrays of Non-Numbers ###"
string_array = ["Hellow", "World"]
print string_array
puts

puts "### Arrays of Arrays ###"
multi_d_array = [[0,1,2,3],[1,0,1,2],[2,1,0,1],[3,2,1,0]]
multi_d_array.each { |x| puts "#{x}\n" }

puts "### Introduction to Hashes ###"
my_hash = {
    "name" => "Alex",
    "age" => 19,
}

puts my_hash["name"]
puts my_hash["age"]

puts "### Using Hash.new ###"
animals = Hash.new
animals["Volt"] = "dog"

puts animals["Volt"]

puts "### Adding to a Hash ###"
animals["Stevie"] = "cat"

puts animals["Stevie"]

puts "### Accessing Hash Values ###"
puts animals["Volt"]
puts animals["Stevie"]

puts "### Iterating Over Arrays ###"
languages = ["HTML", "CSS", "JavaScript", "Ruby"]

languages.each do |language|
  puts language
end

puts "### Iterating Over Multidimensional Arrays ###"
s = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

s.each do |sub_array|
  sub_array.each do |el|
    print "#{el} "
  end
  puts
end

puts "### Iterating Over Hashes ###"
secret_identities = {
    "The Batman" => "Bruce Wayne",
    "Superman" => "Clark Kent",
    "Wonder Woman" => "Diana Prince",
    "Freakazoid" => "Dexter Douglas"
}

secret_identities.each do |x, y|
  puts "#{x}: #{y}"
end