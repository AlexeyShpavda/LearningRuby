puts "### Method Syntax ###"
def puts_1_to_10
  (1..10).each { |i| print "#{i} "}
end
puts_1_to_10
puts

puts "### Parameters and Arguments ###"
def square(n)
  puts n ** 2
end

square(12)

puts "### Splat! ###"
def welcome(greeting, *friends)
  friends.each { |friend| puts "#{greeting}, #{friend}!" }
end

welcome("What up", "Ian", "Zoe", "Zenas", "Eleanor")

puts "### Return ###"
def sum(num1, num2)
  return num1 + num2
end

puts sum(1, 2)

puts "### Blocks Are Like Nameless Methods ###"
1.times do
  puts "I'm Alex"
end

3.times { puts "I'm learning Ruby" }

puts "### How Blocks Differ from Methods ###"
# method that capitalizes a word
def capitalize(string)
  puts "#{string[0].upcase}#{string[1..-1]}"
end

capitalize("alex") # prints "Alex"
capitalize("shpavda") # prints "Shpavda"

# block that capitalizes each string in the array
["alex", "shpavda"].each {|string| puts "#{string[0].upcase}#{string[1..-1]}"} # prints "Alex", then "Shpavda"

puts "### Using Code Blocks ###"
[1, 2, 3, 4, 5].each { |i| puts i*5 }

puts "### Introduction to Sorting ###"
array = [4, 3, 8, 7, 1, 5, 6, 2, 9]
array.sort!
print array
puts

puts "### Foundations ###"
books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]
books.sort!
puts books

puts "### The Combined Comparison Operators ###"
book_1 = "A Wrinkle in Time"
book_2 = "A Brief History of Time"

=begin
  It should return -1 if the first block parameter should come before the second,
  1 if vice versa, and 0 if they are of equal weight
=end
puts book_1 <=> book_2