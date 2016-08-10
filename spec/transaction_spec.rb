require 'transaction'

describe Transaction do

  subject(:transaction) { described_class.new(50, 100) }

  describe "upon initialization" do
    it "has the current date" do
      expect(transaction.date).to eq(Time.now.strftime("%d/%m/%y"))
    end

    it "has a balance" do
      expect(transaction.balance).to eq 100
    end

    it "has a credit amount" do
      expect(transaction.credit).to eq 50
    end

    it "has a debit ammount" do
      expect(transaction.debit).to eq -50
    end
  end

end
