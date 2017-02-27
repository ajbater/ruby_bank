require_relative 'transaction'

class Statement

  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def create_transaction(type, amount)
    self.transactions << Transaction.new(type, amount)
  end

end
