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