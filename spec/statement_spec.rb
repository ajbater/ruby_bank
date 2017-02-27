require 'statement'

describe Statement do
  subject(:statement) { described_class.new }

  it 'has capacity to store transactions' do
    expect(statement.transactions).to eq []
  end
end
