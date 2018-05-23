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