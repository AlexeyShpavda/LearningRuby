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

