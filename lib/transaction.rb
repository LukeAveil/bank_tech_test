class Transaction

  attr_reader :date, :balance

  def initialize(balance)
    @date = Time.now.strftime("%d/%m/%y")
    @balance = balance
  end

end
