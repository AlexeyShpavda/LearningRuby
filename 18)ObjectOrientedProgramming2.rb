puts "### Quick Review: Building a Class ###"
class ClassName
  def method_name(parameter)
    @class_Variable = parameter
  end
end

puts "### Going Public ###"
class Dog
  def initialize(name, breed)
    @name = name
    @breed = breed
  end

  public

  def bark
    puts "Woof!"
  end
end

puts "### Private! Keep Out! ###"
class Dog
  def initialize(name, breed)
    @name = name
    @breed = breed
  end

  public

  def bark
    puts "Woof!"
  end

  private

  def id
    @id_number = 12345
  end
end

puts "### attr_reader, attr_writer ###"
class Person
  def initialize(name, job)
    @name = name
    @job = job
  end

  attr_reader :name
  attr_writer :job
end

puts "### attr_accessor ###"
class Person
  attr_reader :name
  attr_accessor :job

  def initialize(name, job)
    @name = name
    @job = job
  end
end

puts "### What's a Module? ###"
module Circle

  PI = 3.141592653589793

  def Circle.area(radius)
    PI * radius**2
  end

  def Circle.circumference(radius)
    2 * PI * radius
  end
end

puts "### Module Syntax ###"
module MyLibrary
  FAVE_BOOK = "The Master and Margarita"
end