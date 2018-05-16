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