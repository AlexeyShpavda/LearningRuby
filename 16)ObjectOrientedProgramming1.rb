puts "### Class Syntax ###"
class NewClass
end

puts "### Classing It Up ###"
class Car
  def initialize
  end
end

puts "### What's in a @name? ###" # Instance variable
class Animal
  def initialize(name)
    @name = name
  end
end

puts "### Instantiating First Object ###"
class Person
  def initialize(name)
    @name = name
  end
end

matz = Person.new("Yukihiro")

puts "### Naming Variables ###"
class MyClass
  $my_variable = "Hello!"
end
puts $my_variable

puts "### For Instance ###"
class Human
  def initialize(name, age, profession)
    @name = name
    @age = age
    @profession = profession
  end
end

puts "### Twice the @, Twice as Classy ###"
class Person
  @@people_count = 0

  def initialize(name)
    @name = name
    @@people_count += 1
  end

  def self.number_of_instances
    @@people_count
  end
end

matz = Person.new("Yukihiro")
dhh = Person.new("David")

puts "Number of Person instances: #{Person.number_of_instances}"

puts "### Watch Your Step ###"
class ApplicationError
  def display_error
    puts "Error!"
  end
end

class SuperBadError < ApplicationError
end

err = SuperBadError.new
err.display_error

puts "### Inheritance Syntax ###"
class Application
  def initialize(name)
    @name = name
  end
end

class MyApp < Application
end