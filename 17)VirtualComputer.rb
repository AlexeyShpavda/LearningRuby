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
class Computer
  @@users = {}
  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
    @@users[username] = password
  end
end