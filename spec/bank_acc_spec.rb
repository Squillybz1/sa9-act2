require 'bank_acc'

RSpec.describe BankAccount do
  let(:acct){BankAccount.new}
  describe ".deposit" do
    it "increases the balance by the deposit amount" do
      expect(acct.deposit(150)).to eq(acct.balance)
    end
  end

  describe ".withdraw" do
    it "decreases the balance by the withdrawal amount if funds are available" do
      expect(acct.withdraw(100)).to eq(acct.balance)
    end

    it "does not change the balance if insufficient funds" do
      balance_1 = 0
      expect(acct.withdraw(100)).to be nil
    end
  end

  describe "#balance" do
    it "returns the current balance" do
      expect(acct.balance).to eq(0)

    end
  end
end
