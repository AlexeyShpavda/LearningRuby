puts "### Getting the User's Input ###"
print "Text to search through: "
text = gets.chomp
print "Word to redact: "
redact = gets.chomp

puts "### The .split Method ###"
words = text.split(" ")
print words
puts

puts "### Redacted! ###"
words.each do |word|
  print word
end
puts