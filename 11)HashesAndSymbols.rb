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