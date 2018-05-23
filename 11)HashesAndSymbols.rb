puts "### The Story So Far ###"
my_hash = Hash.new

puts "### Iterating Over Hashes ###"
matz = { "First name" => "Yukihiro",
         "Last name" => "Matsumoto",
         "Age" => 47,
         "Nationality" => "Japanese",
         "Nickname" => "Matz"
}

matz.each do |key, value|
  puts value
end

puts "### Nil: a Formal Introduction ###"
creatures = { "weasels" => 0,
              "puppies" => 6,
              "platypuses" => 3,
              "canaries" => 1,
              "Heffalumps" => 7,
              "Tiggers" => 1
}

creatures["birds"]

puts "### Setting Own Default ###"
no_nil_hash = Hash.new("Hello")

puts "### A Key of a Different Color ###"
menagerie = { :foxes => 2,
              :giraffe => 1,
              :weezards => 17,
              :elves => 1,
              :canaries => 4,
              :ham => 1
}

puts "### What's a Symbol? ###"
puts "string" == :string # false

puts "string".object_id
puts "string".object_id

puts :symbol.object_id
puts :symbol.object_id

puts "### Symbol Syntax ###"
# :my symbol  Don't do this!
# :my_symbol  Do this instead.

my_first_symbol = :hello

puts "### What are Symbols Used For? ###"
symbol_hash = {
    :one => 1,
    :two => 2,
    :three => 3
}

puts "### Converting Between Symbols and Strings ###"
strings = ["HTML", "CSS", "JavaScript", "Ruby"]
symbols = []

strings.each do |s|
  symbols.push(s.to_sym)
end
print symbols
puts

puts "### Many Paths to the Same Summit ###"
strings = ["HTML", "CSS", "JavaScript", "Ruby"]
symbols = []

strings.each do |s|
  symbols.push(s.intern) # == symbols.push(s.to_sym)
end
print symbols
puts

puts "### All Aboard the Hash Rocket! ###"
# '=>' is sometimes nicknamed the hash rocket style.
numbers = {
    :one => "one",
    :two => "two",
    :three => "three"
}

puts "### The Hash Rocket Has Landed ###"
numbers = {
    one: "one",
    two: "two",
    three: "three"
}

puts "### Dare to Compare ###"
require 'benchmark'

string_AZ = Hash[("a".."z").to_a.zip((1..26).to_a)]
symbol_AZ = Hash[(:a..:z).to_a.zip((1..26).to_a)]

string_time = Benchmark.realtime do
  100_000.times { string_AZ["r"] }
end

symbol_time = Benchmark.realtime do
  100_000.times { symbol_AZ[:r] }
end

puts "String time: #{string_time} seconds."
puts "Symbol time: #{symbol_time} seconds."

puts "### Becoming More Selective ###"
movie_ratings = {
    memento: 3,
    primer: 3.5,
    the_matrix: 5,
    truman_show: 4,
    red_dawn: 1.5,
    skyfall: 4,
    alex_cross: 2,
    uhf: 1,
    lion_king: 3.5
}

good_movies = movie_ratings.select { |key, value| value > 3 }
puts good_movies

puts "### More Methods, More Solutions ###"
movie_ratings = {
    memento: 3,
    primer: 3.5,
    the_matrix: 3,
    truman_show: 4,
    red_dawn: 1.5,
    skyfall: 4,
    alex_cross: 2,
    uhf: 1,
    lion_king: 3.5
}

movie_ratings.each_key { |k| puts k }

movie_ratings.each_value { |v| puts v }