puts "### Setting Up ###"
movies = {
    Interstellar: 4.8,
    TheDarkKnight: 4.7
}

puts "What would you like to do? "
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

choice = gets.chomp

puts "### The Case Statement ###"
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