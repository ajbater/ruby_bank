class Account

  attr_accessor :balance
  attr_reader :statement

  def initialize(statement_klass)
    @balance = 0
    @statement = statement_klass.new
  end

  def deposit(amount)
    self.balance += amount
    self.statement.create_transaction('deposit', amount)
  end

  def debit(amount)
    self.balance -= amount
    self.statement.create_transaction('debit', amount)
  end

  def request_statement

  end

end
