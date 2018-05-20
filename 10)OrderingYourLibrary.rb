puts "### Defining Our Method ###"
# def alphabetize
# end

puts "### Default Parameters ###"
# def alphabetize(arr, rev=false)
# end

puts "### Sorting ###"
=begin
  def alphabetize(arr, rev=false)
    arr.sort!
  end
numbers = [5, 1, 3, 8]
alphabetize(numbers)
puts numbers
=end

puts "### Sorting With Control Flow ###"
def alphabetize(arr, rev=false)
  if rev
    arr.sort!.reverse!
  else
    arr.sort!
  end
end

numbers = [5, 1, 3, 8]
print numbers
alphabetize(numbers)
print numbers