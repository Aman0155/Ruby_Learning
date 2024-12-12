class BankAccount
  def initialize
    @balance = 0.0
  end

  def deposit(amount)
    if amount > 0
      @balance += amount
      puts "Deposited #{amount} : New balance #{@balance}"
    else
      puts "Deposit must be greater than 0"
    end
  end

  def withdraw(amount)  
    if amount > 0
      if amount <= @balance
        @balance -= amount
        puts "Withdrew #{amount} : New balance #{@balance}"
      else
        puts "Insufficient balance: #{@balance}"
      end
    else
      puts "Withdrawal must be greater than 0"
    end
  end

  def display_balance
    puts "Current balance: #{@balance}"
  end
end

account = BankAccount.new
account.deposit(10)  
account.deposit(50)  

account.display_balance  

account.withdraw(40)  
account.display_balance  
