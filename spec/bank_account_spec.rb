require 'bank_account'

describe BankAccount do
  it 'has a balance of zero' do
    expect(subject.balance).to eq(0)
  end

  describe '#deposit' do

    it { is_expected.to respond_to(:deposit).with(1).argument }
    it 'can deposit a sum of money' do
      expect{ subject.deposit 1 }.to change{ subject.balance }.by 1
    end
  end

  describe '#withdraw' do

    it { is_expected.to respond_to(:withdraw).with(1).argument }
    it 'can withdraw a sum of money' do
      expect{ subject.withdraw 1 }.to change{ subject.balance }.by -1
    end
  end
end