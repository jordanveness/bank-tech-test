class BankAccount

  attr_reader :balance, :statement

  def initialize
    @balance = 0
    @statement = []
  end

  def deposit(amount)
    @balance += amount
    statement << ["#{date} || +#{amount} || #{balance}"]
  end

  def withdraw(amount)
    @balance -= amount
    statement << ["#{date} || -#{amount} || #{balance}"]
  end

  def date
    date = Time.now.strftime("%d/%m/%Y")
  end

  def print_statement
    summary = statement
    print summary
  end

end
