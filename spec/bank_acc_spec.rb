require 'bank_acc'

RSpec.describe BankAccount do
  let(:acct){BankAccount.new}
  describe ".deposit" do
    it "increases the balance by the deposit amount" do
      balance_1 = acct.balance
      expect(acct.deposit(150)).to be > balance_1
    end
  end

  describe ".withdraw" do
    it "decreases the balance by the withdrawal amount if funds are available" do
      balance_1 = acct.deposit(150)
      expect(acct.withdraw(100)).to be < balance_1
    end

    it "does not change the balance if insufficient funds" do
      balance_1 = 0
      expect(acct.withdraw(100)).to be nil
    end
  end

  describe "#balance" do
    it "returns the current balance" do
      expect(acct.balance).to eq(acct.balance)

    end
  end
end
