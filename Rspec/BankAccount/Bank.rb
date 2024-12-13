class InsufficientFundsError < StandardError; end

class BankAccount
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(amount)
    raise ArgumentError, "Amount must be positive" if amount <= 0
    @balance += amount
  end

  def withdraw(amount)
    raise InsufficientFundsError, "Not enough funds" if amount > @balance
    @balance -= amount
  end

  def check_balance
    @balance
  end
end
