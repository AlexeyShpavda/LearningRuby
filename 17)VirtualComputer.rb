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