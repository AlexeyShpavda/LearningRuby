=begin
  Contents:
    Prompting the User
    Getting Input
    Printing the Output
    Formatting with String Methods
=end

puts "### Prompting the User ###"
puts "What's your first name?"

puts "### Getting Input ###"
name = gets.chomp

puts "### Printing the Output ###"
puts "Your name is #{name}!"

puts "### Formatting with String Methods ###"
puts "What's your last name?"
surname = gets.chomp
puts "Your name is #{surname.capitalize}!"