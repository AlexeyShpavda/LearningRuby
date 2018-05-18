puts "### Get input from the user ###"
puts "Text please: "
text = gets.chomp

puts "### Building the Words Array ###"
words = text.split(" ")

puts "### Creating the Frequencies Hash ###"
frequencies = Hash.new(0)