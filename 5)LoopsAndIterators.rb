puts "### The 'While' Loop ###"
counter = 1
while counter < 11
  print counter, " "
  counter = counter + 1
end
puts

puts "### The 'Until' Loop ###"
counter = 1
until counter > 10
  print counter, " "
  counter = counter + 1
end
puts

puts "### More Assignment Operators ###"
counter += 1 # counter = counter + 1

puts "### The 'For' Loop ###"
for num in 1..10
  print num, " "
end
puts