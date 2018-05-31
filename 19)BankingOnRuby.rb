=begin
  Contents:
    Creating the Account Class
    Private Affairs
    Displaying the Balance
    Making a Withdrawal
    Opening an Account
    Deposit
=end


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
=begin
class Account
  attr_reader :name, :balance
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end

  public

  def display_balance(pin_number)
    puts pin_number == @pin ? "Balance: $#{@balance}." : "pin_error"
  end

  private

  def pin
    @pin = 1234
  end

  def pin_error
    "Access denied: incorrect PIN."
  end
end
=end

puts "### Making a Withdrawal ###"
=begin
class Account
  attr_reader :name, :balance
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end

  public

  def display_balance(pin_number)
    puts pin_number == @pin ? "Balance: $#{@balance}." : "pin_error"
  end

  def withdraw(pin_number, amount)
    if pin_number == @pin
      @balance -= amount
      puts "Withdrew #{amount}."
    else
      puts pin_error
    end
  end

  private

  def pin
    @pin = 1234
  end

  def pin_error
    "Access denied: incorrect PIN."
  end
end
=end

puts "### Opening an Account ###"
=begin
class Account
  attr_reader :name, :balance
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end

  public

  def display_balance(pin_number)
    puts pin_number == @pin ? "Balance: $#{@balance}." : "pin_error"
  end

  def withdraw(pin_number, amount)
    if pin_number == @pin
      @balance -= amount
      puts "Withdrew #{amount}."
    else
      puts pin_error
    end
  end

  private

  def pin
    @pin = 1234
  end

  def pin_error
    "Access denied: incorrect PIN."
  end
end

checking_account = Account.new("Alex", 1000000)
=end

puts "### Deposit ###"
class Account
  attr_reader :name, :balance
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end

  public

  def display_balance(pin_number)
    puts pin_number == pin ? "Balance: $#{@balance}." : pin_error
  end

  def deposit(pin_number, amount)
    if pin_number == pin
      @balance += amount
      puts "Deposit #{amount}."
    else
      puts pin_error
    end
  end

  def withdraw(pin_number, amount)
    if pin_number == pin
      @balance -= amount
      puts "Withdrew #{amount}."
    else
      puts pin_error
    end
  end

  private

  def pin
    @pin = 1234
  end

  def pin_error
    "Access denied: incorrect PIN."
  end
end

checking_account = Account.new("Alex", 1000000)

puts checking_account.name
puts checking_account.display_balance(1234)
checking_account.deposit(1234, 1000)
puts checking_account.display_balance(1234)