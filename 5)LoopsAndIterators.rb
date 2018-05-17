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

puts "### Inclusive and Exclusive Ranges ###"
for number in 1..15
  print number, " "
end
puts
for number in 1...15
  print number, " "
end
puts

puts "### The Loop Method ###"
i = 20
loop do
  print "#{i} "
  break if i <= 0
  i -= 1
end
puts

puts "### Next! ###"
i = 20
loop do
  i -= 1
  next if i % 2 != 0
  print "#{i}"
  break if i <= 0
end
puts