require './lib/bank_account'

describe BankAccount do 
  it "should allow you to deposit a sum of money" do
    bank_account = BankAccount.new
    expect(bank_account.deposit).to equal(250)
  end
end
