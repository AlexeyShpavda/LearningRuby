=begin
  Contents:
    Class Syntax
    Classing It Up
    What's in a @name?
    Instantiating First Object
    Naming Variables
    For Instance
    Twice the @, Twice as Classy
    Watch Your Step
    Inheritance Syntax
    Override!
    When Good isn't Good Enough
    There Can Be Only One!
    Class Basics
    Getting Classier
    Forge an Object in the Fires of Mount Ruby
    Inheriting a Fortune
    Up, Up, and Away!
=end

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

puts "### Override! ###"
class Creature
  def initialize(name)
    @name = name
  end

  def fight
    "Punch to the chops!"
  end
end

class Dragon < Creature
  def fight
    "Breathes fire!"
  end
end

puts "### When Good isn't Good Enough ###"
class CreatureTwo
  def initialize(name)
    @name = name
  end

  def fight
    "Punch to the chops!"
  end
end

class DragonTwo < CreatureTwo
  def fight
    puts "Instead of breathing fire. . . "
    super
  end
end

puts "### There Can Be Only One! ###"
class CreatureThree
  def initialize(name)
    @name = name
  end
end

class PersonThree
  def initialize(name)
    @name = name
  end
end

class DragonThree < CreatureThree; end
# class DragonThree < PersonThree; end

puts "### Class Basics ###"
=begin
class Message
  def initialize(from, to)
    @from = from
    @to = to
  end
end
=end

puts "### Getting Classier ###"
=begin
class Message
  def initialize(from, to)
    @from = from
    @to = to
    @@messages_sent +=1
  end
  @@messages_sent = 0
end
=end

puts "### Forge an Object in the Fires of Mount Ruby ###"
# my_message = Message.new("Me", "Company")

puts "### Inheriting a Fortune ###"
=begin
class Message
  def initialize(from, to)
    @from = from
    @to = to
    @@messages_sent +=1
  end
  @@messages_sent = 0
end

my_message = Message.new("Me", "Company")

class Email < Message
  def initialize(subject)
    @subject = subject
  end
end
=end

puts "### Up, Up, and Away! ###"
class Message
  @@messages_sent = 0
  def initialize(from, to)
    @from = from
    @to = to
    @@messages_sent +=1
  end
end

class Email < Message
  def initialize(from, to)
    super
  end
end

my_message = Message.new("Ian", "Alex")