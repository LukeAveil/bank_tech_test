require 'transactionlog'

describe TransactionLog do

  subject(:transactionlog) { described_class.new(transaction_class) }

  let(:transaction_class) { double :transaction_class, new: transaction }
  let(:transaction) { double :transaction }

  describe "upon initialization" do
    it "has no transaction records" do
      expect(transactionlog.transactions).to eq []
    end
  end

  describe "#log_transaction" do
    it "logs a record of a transaction" do
      transactionlog.log_transaction
      expect(transactionlog.transactions).to include transaction
    end
  end

end
