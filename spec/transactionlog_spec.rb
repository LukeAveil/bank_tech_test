require 'transactionlog'

describe TransactionLog do

  subject(:transactionlog) { described_class.new }

  describe "upon initialization" do
    it "has no transaction records" do
      expect(transactionlog.transactions).to eq []
    end
  end

end
