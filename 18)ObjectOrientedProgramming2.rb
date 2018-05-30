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