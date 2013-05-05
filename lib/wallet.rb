class Wallet

  attr_reader :balance

  def initialize(balance = 0)
    @balance = balance
  end

  def add(amount)
    @balance += amount
  end

  def pay(amount)
    raise "You don't have enough money" unless @balance > amount
      @balance -= amount
  end
end
