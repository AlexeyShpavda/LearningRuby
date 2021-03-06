=begin
  Contents:
    Quick Review: Building a Class
    Going Public
    Private! Keep Out!
    attr_reader, attr_writer
    attr_accessor
    What's a Module?
    Module Syntax
    Resolve to Keep Learning
    A Few Requirements
    Feeling Included
    The Marriage of Modules and Classes
    Imitating Multiple Inheritance
    Extend Your Knowledge
    A Matter of Public Knowledge
    Private Affairs
    Module Magic
    Mixin for the Win
=end

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

puts "### Resolve to Keep Learning ###"
puts Math::PI

puts "### A Few Requirements ###"
require 'date'

puts Date.today

puts "### Feeling Included ###"
class Angle
  include Math
  attr_accessor :radians

  def initialize(radians)
    @radians = radians
  end

  def cosine
    cos(@radians)
  end
end

acute = Angle.new(1)
acute.cosine

puts "### The Marriage of Modules and Classes ###"
module Action
  def jump
    @distance = rand(4) + 2
    puts "I jumped forward #{@distance} feet!"
  end
end

class Rabbit
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Cricket
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

peter = Rabbit.new("Peter")
jiminy = Cricket.new("Jiminy")

peter.jump
jiminy.jump

puts "### Imitating Multiple Inheritance ###"
module MartialArts
  def swordsman
    puts "I'm a swordsman."
  end
end

class Ninja
  include MartialArts
  def initialize(clan)
    @clan = clan
  end
end

class Samurai
  include MartialArts
  def initialize(shogun)
    @shogun = shogun
  end
end

puts "### Extend Your Knowledge ###"
module ThePresent
  def now
    puts "It's #{Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour}:#{Time.new.min} #{Time.new.hour > 12 ? 'PM' : 'AM'} (GMT)."
  end
end

class TheHereAnd
  extend ThePresent
end

TheHereAnd.now

puts "### A Matter of Public Knowledge ###"
class Application
  attr_accessor :status
  def initialize; end

  public

  def print_status
    puts "All systems go!"
  end
end

puts "### Private Affairs ###"
class Application
  attr_accessor :status
  def initialize; end

  public

  def print_status
    puts "All systems go!"
  end

  private

  def password
    12345
  end
end

puts "### Module Magic ###"
module Languages
  FAVE = "Ruby"
end

puts "### Mixin for the Win ###"
module Languages
  FAVE = "Ruby"
end

class Master
  include Languages
  def initialize; end
  def victory
    puts FAVE
  end
end

total = Master.new
total.victory