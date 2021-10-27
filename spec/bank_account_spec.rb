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

  describe '#statement' do

    it 'should display the statement as an array' do 
      expect(subject.statement).to be_an_instance_of(Array)
    end
  end

  describe '#print_statement'

    it 'should display the full statement' do 
      expect {subject.print_statement}.to output.to_stdout
    end
  end