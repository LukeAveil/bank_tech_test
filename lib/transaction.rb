class Transaction

  attr_reader :date, :balance, :credit, :debit

  def initialize(transaction_amount, balance)
    @date = Time.now.strftime("%d/%m/%y")
    @balance = balance
    @credit = transaction_amount if transaction_amount > 0
    @debit = -(transaction_amount) if transaction_amount > 0
  end

end
