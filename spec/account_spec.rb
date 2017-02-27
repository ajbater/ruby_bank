require 'account'

describe Account do
  let(:statement_class) { double(:Statement, new: statement)}
  let(:statement) { double :statement }
  subject(:account) { described_class.new(statement_class) }

  it 'should have a balance which is 0 by default' do
    expect(account.balance).to eq 0
  end

  it 'holds a statement object' do
    expect(account.statement).to eq statement
  end

  context 'making deposits' do
    it 'adds the correct amount to the balance when you make a deposit' do
      allow(statement).to receive(:create_transaction).with('deposit', 100)
      account.deposit(100)
      expect(account.balance).to eq 100
    end

    it 'when making a deposit it adds a transaction object to the statement' do
      allow(statement).to receive(:create_transaction).with('deposit', 100)
      statement.should_receive(:create_transaction).once.with('deposit', 100)
      account.deposit(100)
    end
  end

  context 'making withdrawals' do
    it 'subtracts the correct amount from the balance when you make a deposit' do
      allow(statement).to receive(:create_transaction).with('deposit', 100)
      allow(statement).to receive(:create_transaction).with('debit', 50)
      account.deposit(100)
      account.debit(50)
      expect(account.balance).to eq 50
    end

    it 'when making a withdrawal it adds a transaction object to the statement' do
      allow(statement).to receive(:create_transaction).with('debit', 50)
      statement.should_receive(:create_transaction).once.with('debit', 50)
      account.debit(50)
    end
  end
end
