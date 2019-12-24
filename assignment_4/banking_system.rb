class Account


  def money_deposit
    puts "\nEnter amount you want to deposit :"
    @deposit = gets.chomp.to_i
    puts "\nMoney deposited : #{@deposit}"
  end

  def money_withdraw
    puts "\nEnter amount you want to withdraw :"
    @withdraw = gets.chomp.to_i
    puts "\nMoney withdrawn : #{@withdraw}"
  end

  def account_balance
    @balance = @deposit - @withdraw
    puts "\nAccount balance : #{@balance}"
  end

  def deposit
    @deposit
  end

  def withdraw
    @withdraw
  end

  def balance 
    @balance
  end
end

class Savings_Account < Account
  attr_reader :months, :principle_amount, :interest_savings_account
  @interest_savings_account = 0.0
  def interest_calc
    puts "\nEnter number of months : "
    @months = gets.chomp.to_i
    puts "\nEnter principle amount :"
    @principle_amount = gets.chomp.to_i
    rate_of_interest = 0.055
    puts @principle_amount
    puts @months
    puts rate_of_interest
    @interest_savings_account = @principle_amount * @months * rate_of_interest 
    puts "\n#{@interest_savings_account}"
  end

  def choose_account_type
    puts "Choose account type :
      1. Savings Account
      2. Current Account"
    account_option = gets.chomp.to_i
    return account_option
  end
end

class Current_Account < Account
  attr_reader :months, :principle_amount, :interest_current_account
  @interest_current_account = 0.0
  def interest_calc
    puts "\nEnter number of months : "
    @months = gets.chomp.to_i
    puts "\nEnter principle amount :"
    @principle_amount = gets.chomp.to_i
    rate_of_interest = 0.01
    puts @principle_amount
    puts @months
    puts rate_of_interest
    @interest_current_account = @principle_amount * @months * rate_of_interest
    puts "\n#{@interest_savings_account}"
  end
end


  account_obj = Account.new
  savings_account_obj = Savings_Account.new
  current_account_obj = Current_Account.new

  loop do
    puts "============="
    puts "Welcome to Ruby Bank"
    puts "Choose option:
      1. Deposit
      2. Withdraw
      3. Check balance
      4. Interest calculator
      5. Exit"
    option = gets.chomp.to_i
    case option
    when 1
      savings_account_obj.money_deposit
    when 2
      savings_account_obj.money_withdraw
    when 3
      savings_account_obj.account_balance
    when 4
      account_option = savings_account_obj.choose_account_type
      case account_option
      when 1
        savings_account_obj.interest_calc
        puts "\nTotal amount of money after #{savings_account_obj.months} = #{savings_account_obj.principle_amount + savings_account_obj.interest_savings_account}"
      when 2
        current_account_obj.interest_calc
        puts "\nTotal amount of money after #{current_account_obj.months} months = #{current_account_obj.principle_amount + current_account_obj.interest_current_account}"
      else break
      end
    end
    break if option == 5
  end
