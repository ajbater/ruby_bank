require 'account'

describe Account do
  subject(:account) { described_class.new }

  it 'should have a balance which is 0 by default' do
    expect(account.balance).to eq 0
  end

  context 'making deposits' do
    it { is_expected.to respond_to(:deposit).with(1).argument }
  end

  context 'making withdrawals' do
    it { is_expected.to respond_to(:withdraw).with(1).argument }
  end
end
