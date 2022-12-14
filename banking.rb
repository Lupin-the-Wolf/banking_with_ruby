class Account
  attr_reader :name
  attr_reader :balance
  def initialize (name, balance=100)
    @name = name
    @balance = balance
  end
  private
  def pin
      @pin = 1234
  end

  def pin_error
    return "Access denied: incorrect PIN."
  end

  public
  def display_balance(pin_number)
    if pin_number == pin
      puts "Balance: @#{@balance}"
    else puts pin_error
    end
  end
  def withdraw(pin_number, amount)
    if pin_number == pin
      @balance -= amount
      puts "Withdrew #{amount}. New balance: #{@balance}."
    else puts pin_error
    end
  end
  def deposit(pin_number, amount)
    if pin_number == pin
    @balance += amount
    puts "Deposited #{amount}. New Balance: #{@balance}"
    else puts pin_error
    end
  end
  def balance_check(pin_number)
    if pin_number == pin
    puts "Your balance is #{@balance}"
    else puts pin_error
    end
  end
end

checking_account = Account.new("Lupin", 1000000)
checking_account.withdraw(1234, 1000)
checking_account.deposit(1234, 500_000)
checking_account.balance_check(1234)