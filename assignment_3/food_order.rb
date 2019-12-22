class Order
  attr_accessor :order_name, :order_id, :order_status
  def initialize 
    @order_name 
    @order_id 
    @order_status
    @menu_arr = ["FRIED RICE","SZN FRIED RICE","SPRING ROLL","D","E","F"]
  end

  def order_from_user
    print  @menu_arr
    puts "\nEnter your order :"
    @order_name = gets.chomp.upcase
  end

  def order_name_available?
    puts "==================="
    if @menu_arr.include? (@order_name)
      available = "Y"
    else
      available = "N"
    end
    return available
  end

  def order_status_confirmation
    puts "\nConfirm order? Y/N"
    confirmation = gets.chomp.upcase
    if confirmation == "Y"
      puts "Order status : Confirmed"
    end
    return confirmation
  end

  def order_status_delivery
    puts "\nOrder delivered? Y/N"
    delivery = gets.chomp.upcase
    if delivery == "Y"
      puts "\nOrder delivered"
    else
      puts "\nOrder on it's way"
    end
  end
end

test = Order.new

while true

  test.order_from_user

  available = test.order_name_available?
  if available == 'Y'
    puts "\nItem available"
  else
    puts "\nItem not available.\nOrder a different item : "
    next
  end

  confirmation = test.order_status_confirmation
  if confirmation == 'Y'
    break
  else puts "\nOrder a different item : "
  end
end
  test.order_status_delivery

