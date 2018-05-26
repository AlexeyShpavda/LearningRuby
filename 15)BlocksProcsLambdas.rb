puts "### I Know This! ###"
3.times { puts "I'm a block!"}

puts "### Collect 'Em All ###"
fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]

double = Proc.new {|x| x * 2}

doubled_fibs = fibs.collect(&double)

puts doubled_fibs

puts "### Learning to Yield ###"
def block_test
  puts "We're in the method!"
  puts "Yielding to the block..."
  yield
  puts "We're back in the method!"
end

block_test { puts ">>> We're in the block!" }