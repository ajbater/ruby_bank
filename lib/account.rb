class Account

  attr_accessor :balance
  attr_reader :statement

  def initialize(statement_klass)
    @balance = 0
    @statement = statement_klass.new
  end

  def deposit(amount)
    self.balance += amount
  end

  def withdraw(amount)
    self.balance -= amount
  end

end
