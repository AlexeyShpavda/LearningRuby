=begin
  Contents:
    if
    else
    elsif
    unless
    Equal or Not?
    Less Than or Greater Than
    And
    Or
    Not
    Combining Boolean Operators
=end

puts "### if ###"
if 3 < 9
  puts "I'm getting printed because three is less than nine!"
end

puts "### else ###"
if 3 > 9
  puts "I won't get printed because three is less than nine."
else
  puts "That means I'll get printed!"
end

puts "### elsif ###"
if 9 < 3
  puts "nine is less than three!"
elsif 9 > 3
  puts "nine is greater than three!"
else
  puts "nine equals three!"
end

puts "### unless ###"
are_you_hungry = false

unless are_you_hungry
  puts "I'm writing Ruby programs!"
else
  puts "Time to eat!"
end

puts "### Equal or Not? ###"
x = 3
y = 3
if x == y
  puts "x and y are equal!"
end

puts "### Less Than or Greater Than ###"
puts 18 > 17
puts 22 < 31
puts 10 >= 10
puts -13 <= 13

puts "### And ###"
puts true && true # => true
puts true && false # => false
puts false && true # => false
puts false && false # => false

puts "### Or ###"
puts true || true # => true
puts true || false # => true
puts false || true # => true
puts false || false # => false

puts "### Not ###"
puts !true # => false
puts !false # => true

puts "### Combining Boolean Operators ###"
# boolean_1 = (3 < 4 || false) && (false || true)
puts boolean_1 = true

# boolean_2 = !true && (!true || 100 != 5**2)
puts boolean_2 = false

# boolean_3 = true || !(true || false)
puts boolean_3 = true