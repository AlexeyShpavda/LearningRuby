puts "### Creating the Account Class ###"
=begin
class Account
  attr_reader :name, :balance
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end
end
=end

puts "### Private Affairs ###"
class Account
  attr_reader :name, :balance
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end

  private

  def pin(number=1234)
    @pin = number
  end

  def pin_error
    "Access denied: incorrect PIN."
  end
end