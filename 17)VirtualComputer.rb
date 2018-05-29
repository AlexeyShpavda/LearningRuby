puts "### Create Class ###"
=begin
class Computer
  def initialize
  end
end
=end

puts "### Fancify Initialize Method ###"
class Computer
  def initialize(username, password)
    @username = username
    @password = password
    @files = Hash.new()
  end
end