require 'transaction'

describe Transaction do
  let(:deposit) { double :deposit }
  let(:amount) { double :amount }
  subject(:transaction) { described_class.new(deposit, amount) }

  it 'has a type' do
    expect(transaction.type).to eq deposit
  end

  it 'has an amount' do
    expect(transaction.amount).to eq amount
  end
end
