require 'account'

describe Account do
  subject(:account) { described_class.new }

  it 'should have a balance which is 0 by default' do
    expect(account.balance).to eq 0
  end

  context 'making deposits' do
    it 'adds the correct amount to the balance when you make a deposit' do
      account.deposit(100)
      expect(account.balance).to eq 100
    end
  end

  context 'making withdrawals' do
    it 'subtracts the correct amount from the balance when you make a deposit' do
      account.deposit(100)
      account.withdraw(50)
      expect(account.balance).to eq 50
    end
  end
end
