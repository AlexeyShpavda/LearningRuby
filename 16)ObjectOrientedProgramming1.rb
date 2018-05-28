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