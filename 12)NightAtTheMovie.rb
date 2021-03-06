=begin
  Contents:
    Setting Up
    The Case Statement
    Prompting: Redux!
    Not My Type
    Error! Error!
    Update
    Display
    Delete
=end

puts "### Setting Up ###"
movies = {
    Interstellar: 4.8,
    TheDarkKnight: 4.7,
    Awake: 3.1,
    Avatar: 4.5,
    StarWars: 4.6,
    Divergent: 4.7,
    Inception: 4.9,
    ThePrestige: 4.9
}

puts "What would you like to do? "
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

choice = gets.chomp

puts "### The Case Statement ###"
=begin
case choice
  when "add"
    puts "Added!"
  when "update"
    puts "Updated!"
  when "display"
    puts "Movies!"
  when "delete"
    puts "Deleted!"
  else
    puts "Error!"
end
=end

puts "### Prompting: Redux! ###"
=begin
case choice
  when "add"
    puts "What movie would you like to add? "
    title = gets.chomp
    puts "What rating does the movie have? "
    rating = gets.chomp
    movies[title.to_s] = rating
  when "update"
    puts "Updated!"
  when "display"
    puts "Movies!"
  when "delete"
    puts "Deleted!"
  else
    puts "Error!"
end
=end

puts "### Not My Type ###"
=begin
case choice
  when "add"
    puts "What movie would you like to add? "
    title = gets.chomp
    puts "What rating does the movie have? "
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
  when "update"
    puts "Updated!"
  when "display"
    puts "Movies!"
  when "delete"
    puts "Deleted!"
  else
    puts "Error!"
end
=end

puts "### Error! Error! ###"
=begin
case choice
  when "add"
    puts "What movie would you like to add? "
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "What rating does the movie have? "
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
    else
      puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
    end
    puts movies
  when "update"
    puts "Updated!"
  when "display"
    puts "Movies!"
  when "delete"
    puts "Deleted!"
  else
    puts "Error!"
end
=end

puts "### Update ###"
=begin
case choice
  when "add"
    puts "What movie would you like to add? "
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "What rating does the movie have? "
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
    else
      puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
    end
    puts movies
  when "update"
    puts "What movie would you like to update? "
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "Error!"
    else
      puts "What rating does the movie have? "
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
    end
  when "display"
    puts "Movies!"
  when "delete"
    puts "Deleted!"
  else
    puts "Error!"
end
=end

puts "### Display ###"
=begin
case choice
  when "add"
    puts "What movie would you like to add? "
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "What rating does the movie have? "
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
    else
      puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
    end
    puts movies
  when "update"
    puts "What movie would you like to update? "
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "Error!"
    else
      puts "What rating does the movie have? "
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
    end
  when "display"
    movies.each do |movie, rating|
      puts "#{movie}: #{rating}"
    end
  when "delete"
    puts "Deleted!"
  else
    puts "Error!"
end
=end

puts "### Delete ###"
case choice
  when "add"
    puts "What movie would you like to add? "
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "What rating does the movie have? "
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
    else
      puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
    end
    puts movies
  when "update"
    puts "What movie would you like to update? "
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "Error!"
    else
      puts "What rating does the movie have? "
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
    end
  when "display"
    movies.each do |movie, rating|
      puts "#{movie}: #{rating}"
    end
  when "delete"
    puts "What movie do you want to delete?"
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "Movie not found!"
    else
      movies.delete(title.to_sym)
      puts "#{title} has been removed."
    end
  else
    puts "Sorry, I didn't understand you."
end