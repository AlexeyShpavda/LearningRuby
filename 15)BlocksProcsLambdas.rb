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

puts "### Why Procs? ###"
group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]

over_4_feet = Proc.new { |height| height >= 4}

=begin
can_ride_1 = group_1.select { |height| height >= 4 }
can_ride_2 = group_2.select { |height| height >= 4 }
can_ride_3 = group_3.select { |height| height >= 4 }
=end

can_ride_1 = group_1.select(&over_4_feet)
can_ride_2 = group_2.select(&over_4_feet)
can_ride_3 = group_3.select(&over_4_feet)

puts can_ride_1
puts can_ride_2
puts can_ride_3

puts "### Practice ###"
def greeter
  yield
end

phrase = Proc.new { puts "Hello there!" }

greeter(&phrase)

puts "### Call Me Maybe ###"
hi = Proc.new { puts "Hello!"}
hi.call

puts "### Symbols, Meet Procs ###"
strings_array = ["1", "2", "3"]
numbers_array = strings_array.map(&:to_i)
print numbers_array, "\n"

puts "### The Ruby Lambda ###"
def lambda_demo(a_lambda)
  puts "I'm the method!"
  a_lambda.call
end

lambda_demo(lambda { puts "I'm the lambda!" })

puts "### Lambda Syntax ###"
strings = ["leonardo", "donatello", "raphael", "michaelangelo"]

symbolize = lambda {|param| param.to_sym}

symbols = strings.collect(&symbolize)
print symbols, "\n"

puts "### Lambdas vs. Procs ###"
def batman_ironman_proc
  victor = Proc.new { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_proc

def batman_ironman_lambda
  victor = lambda { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_lambda

puts "### Practice ###"
my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

symbol_filter = lambda{ |param| param.is_a? Symbol}
symbols = my_array.select(&symbol_filter)
print symbols, "\n"

puts "### And More Practice ###"
odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]
ints = odds_n_ends.select{|elem| elem.is_a? Integer}
puts ints

puts "### Creating a Proc ###"
ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

under_100 = Proc.new {|elem| elem < 100}

puts "### Passing Proc to a Method ###"
youngsters = ages.select(&under_100)
puts youngsters

puts "### Creating a Lambda ###"
crew = {
    captain: "Picard",
    first_officer: "Riker",
    lt_cdr: "Data",
    lt: "Worf",
    ensign: "Ro",
    counselor: "Troi",
    chief_engineer: "LaForge",
    doctor: "Crusher"
}

first_half = lambda {|key, value| value < "M"}

puts "### Passing Your Lambda to a Method ###"
a_to_m = crew.select(&first_half)
puts a_to_m