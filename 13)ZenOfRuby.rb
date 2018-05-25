puts "### Ruby is a Delight ###"
ruby_is_eloquent = true
ruby_is_ugly = false

puts "Ruby is eloquent!" if ruby_is_eloquent
puts "Ruby's not ugly!" unless ruby_is_ugly

puts "### A Simpler 'If' ###"
puts "It's true!" if true

puts "### The One-Line Unless ###"
puts "It's false!" unless false

puts "### One Good Turn Deserves a Ternary ###"
puts 12 < 14 ? "12 is less than 14" : "12 is not less than 14"

puts "### When and Then: The Case Statement ###"
puts "Hello there! What is your native language?"
#greeting = gets.chomp
greeting = "English"

case greeting
  when "English" then puts "Hello!"
  when "French" then puts "Bonjour!"
  when "German" then puts "Guten Tag!"
  when "Finnish" then puts "Haloo!"
  else puts "I don't know that language!"
end

puts "### Conditional Assignment ###"
favorite_book = nil
puts favorite_book

favorite_book ||= "Was nil became the value"
puts favorite_book

favorite_book ||= "Nice!" # Our variable already has a value
puts favorite_book

favorite_book = "Nice!"
puts favorite_book

puts "### Implicit Return ###"
def sum(a, b)
  a + b
end

puts sum(333,667)

puts "### Short-Circuit Evaluation ###"
def a
  puts "A was evaluated!"
  return true
end

def b
  puts "B was also evaluated!"
  return true
end

puts a || b
puts "------"
puts a && b

puts "### The Right Tool for the Job ###"
3.times { puts "Ruby!" }
[1, 2, 3].each { |element| puts element * 10 }

puts "### Up the Down Staircase ###"
100.downto(95) { |number| puts number }
"L".upto("P") { |letter| puts letter }

puts "### Call and Response ###"
puts [1, 2, 3].respond_to?(:push)
puts [1, 2, 3].respond_to?(:to_sym)
