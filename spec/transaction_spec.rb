require 'transaction'

describe Transaction do
  let(:deposit) { double :deposit }
  let(:amount) { double :amount }
  let(:time) { double :time }
  subject(:transaction) { described_class.new(deposit, amount) }

  it 'has a type' do
    expect(transaction.type).to eq deposit
  end

  it 'has an amount' do
    expect(transaction.amount).to eq amount
  end

  it 'has a date' do
    allow(Time).to receive(:new).and_return(time)
    allow(time).to receive(:strftime).and_return('26.02.2017')
    expect(transaction.date).to eq '26.02.2017'
  end
end
