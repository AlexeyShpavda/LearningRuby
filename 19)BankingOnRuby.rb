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
=begin
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
=end

puts "### Displaying the Balance ###"
class Account
  attr_reader :name, :balance
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end

  def display_balance(pin_number)
    puts @pin == pin_number ? "Balance: $#{@balance}." : "pin_error"
  end

  private

  def pin
    @pin = 1234
  end

  def pin_error
    "Access denied: incorrect PIN."
  end
end