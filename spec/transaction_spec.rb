require 'transaction'

describe Transaction do
  let(:deposit) { double :deposit }
  subject(:transaction) { described_class.new(deposit) }

  it 'has a type' do
    expect(transaction.type).to eq deposit
  end
end
