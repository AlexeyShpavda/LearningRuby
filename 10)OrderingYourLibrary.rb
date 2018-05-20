puts "### Defining Our Method ###"
# def alphabetize
# end

puts "### Default Parameters ###"
# def alphabetize(arr, rev=false)
# end

puts "### Sorting ###"
def alphabetize(arr, rev=false)
  arr.sort!
end

numbers = [5, 1, 3, 8]
alphabetize(numbers)
puts numbers