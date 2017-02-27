require 'account'

describe Account do
  subject(:account) { described_class.new }

  it 'should have a balance which is 0 by default' do
    expect(account.balance).to eq 0
  end

  it { is_expected.to respond_to(:withdraw) }
end
