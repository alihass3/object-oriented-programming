class BankAccount

  def initialize(balance,interest_rate)
   @balance=balance
   @interest_rate=interest_rate
 end

def deposit(amount)
  @balance+=amount
end

def get_balance
  return @balance
end

def withdraw(amount)
  @balance-=amount
end

def gain_interest
  @balance+=(@interest_rate/100)*(@balance)
  end

end

#here are the calls
my_account=BankAccount.new(100,10)
my_account.deposit(100)
puts "Balance now is #{my_account.get_balance}"
