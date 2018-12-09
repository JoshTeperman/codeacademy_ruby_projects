=begin
To do
- create hash of account names and balances
- deposit functionality
- transfer b/w accounts
- error handling (overdraw etc)
- account subclasses (savings, checking account)
- interest accrual
- encrypt/decrpyt
- separate pin numbers
=end

class Account
  #attr_reader :name, :balance
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end

  public
  
  def display_balance(pin_number)
    if pin_number == pin 
      puts "Balance: $#{@balance}."
    else puts pin_error
    end
  end
  
  def withdraw(pin_number, amount)
    if pin_number == pin
      @balance -= amount
      puts "Withdrew #{amount}. New balance: $#{@balance}."
    else puts pin_error
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

my_account = Account.new("Eric", 1_000_000)
j_account = Account.new("J", 10_000)
my_account.display_balance(1234)
j_account.display_balance(1234)
checking_account = Account.new("Checking", 1_000)


  