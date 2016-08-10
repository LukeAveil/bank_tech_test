require_relative 'transaction'

class TransactionLog

  attr_reader :transactions

  def initialize(transaction_class = Transaction)
    @transaction_class = transaction_class
    @transactions = []
  end

  def log_transaction
    @transaction = @transaction_class.new
    @transactions << @transaction
  end

end
