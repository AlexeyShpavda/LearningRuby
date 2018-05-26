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

puts "### Yielding With Parameters ###"
def yield_name(name)
  puts "In the method! Let's yield."
  yield("Kim")
  puts "In between the yields!"
  yield(name)
  puts "Block complete! Back in the method."
end

yield_name("Eric") { |n| puts "My name is #{n}." }

yield_name("Alex") { |n| puts "My name is #{n}." }

puts "### Practice ###"
def double(num)
  yield(num)
end

double(5) {|num| puts num * 2}

puts "### Proc Syntax ###"
floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]

round_down = Proc.new {|x| x.floor}

ints = floats.collect(&round_down)
print ints, "\n"