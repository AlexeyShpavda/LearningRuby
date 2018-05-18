=begin
  Contents:
    Get input from the user
    Building the Words Array
    Creating the Frequencies Hash
    Iterating Over the Array
    Sorting the Hash
    Reverse the Hash
    Iterating Over the Hash
=end

puts "### Get input from the user ###"
puts "Text please: "
text = gets.chomp

puts "### Building the Words Array ###"
words = text.split(" ")

puts "### Creating the Frequencies Hash ###"
frequencies = Hash.new(0)

puts "### Iterating Over the Array ###"
words.each do |word|
  frequencies[word]+=1
end

puts "### Sorting the Hash ###"
frequencies = frequencies.sort_by do |word, count|
  count
end

puts "### Reverse the Hash ###"
frequencies.reverse!

puts "### Iterating Over the Hash ###"
frequencies.each do |word, count|
  puts word + " " + count.to_s
end