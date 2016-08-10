require 'transaction'

describe Transaction do

  subject(:transaction) { described_class.new(100) }

  describe "upon initialization" do
    it "has the current date" do
      expect(transaction.date).to eq(Time.now.strftime("%d/%m/%y"))
    end

    it "has a balance" do
      expect(transaction.balance).to eq 100
    end
  end

end
