=begin
  Contents:
    Getting User Input
    Downcase!
    Setting Up Branches
    Returning the Final Thtring
=end

puts "### Getting User Input ###"
print "Enter the Thtring, pleathe!: "
string = gets.chomp

puts "### Downcase! ###"
string.downcase!

puts "### Setting Up Branches ###"
if string.include? "s"
  string.gsub!(/s/, "th")
else
  puts "Nothing to do here!"
end

puts "### Returning the Final Thtring ###"
puts "Your string is: #{string}"