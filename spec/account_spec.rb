require 'account'

describe Account do

  subject(:account) { described_class.new }

  describe "upon initialization" do
    it "account has a balance of zero" do
      expect(account.balance).to eq 0
    end
  end

  describe "#deposit" do
    it "should increase account balance" do
      expect(account.deposit(10)).to be == account.balance
    end
  end



end
