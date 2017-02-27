require 'statement'

describe Statement do
  subject(:statement) { described_class.new }
  let(:transaction) { double :transaction }

  it 'has capacity to store transactions' do
    expect(statement.transactions).to eq []
  end

  it 'can create a new transaction object' do
    statement.create_transaction('deposit', 100)
    expect(statement.transactions.length).to eq 1
  end

  it { is_expected.to respond_to(:print_statement) }
end
