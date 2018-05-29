=begin
  Contents:
    Create Class
    Fancify Initialize Method
    Have a Little Class
    Getting More Creative
    Who are the Users?
    Instantiation Nation
=end

puts "### Create Class ###"
=begin
class Computer
  def initialize
  end
end
=end

puts "### Fancify Initialize Method ###"
=begin
class Computer
  def initialize(username, password)
    @username = username
    @password = password
    @files = Hash.new()
  end
end
=end

puts "### Have a Little Class ###"
=begin
class Computer
  @@users = {}
  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
    @@users[username] = password
  end
end
=end

puts "### Getting More Creative ###"
=begin
class Computer
  @@users = {}
  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
    @@users[username] = password
  end

  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "#{filename} was created at #{time} by #{@username}. "
  end
end
=end

puts "### Who are the Users? ###"
=begin
class Computer
  @@users = {}
  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
    @@users[username] = password
  end

  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "#{filename} was created at #{time} by #{@username}. "
  end

  def Computer.get_users
    @@users
  end
end
=end

puts "### Instantiation Nation ###"
class Computer
  @@users = {}
  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
    @@users[username] = password
  end

  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "#{filename} was created at #{time} by #{@username}. "
  end

  def Computer.get_users
    @@users
  end
end

my_computer = Computer.new("superUser", "12345")