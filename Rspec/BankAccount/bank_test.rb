require 'rspec'
require_relative 'BankAccount'

RSpec.describe BankAccount do
  let(:account) { BankAccount.new }

  describe '#deposit' do
    it "increases the balance when a positive amount is deposited" do
      account.deposit(100)
      expect(account.check_balance).to eq(100)
    end

    it "raises an error when a non-positive amount is deposited" do
    expect { account.deposit(-50) }.to raise_error(ArgumentError, "Amount must be positive")
    end
  end

  describe '#withdraw' do
    it "decreases the balance when a valid withdrawal is made" do
      account.deposit(100)
      account.withdraw(50)
      expect(account.check_balance).to eq(50) 
    end

    it "raises an error if the withdrawal exceeds the available balance" do
      account.deposit(100)
      expect { account.withdraw(150) }.to raise_error(InsufficientFundsError, "Not enough funds")
    end
  end

  describe '#check_balance' do
    it "returns the current balance" do
      account.deposit(200)
      expect(account.check_balance).to eq(200)
    end
  end
end
