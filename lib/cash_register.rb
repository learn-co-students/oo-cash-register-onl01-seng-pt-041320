require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items, :last_amt
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity = 1)
    cost_total = (price * quantity)
    @total += cost_total
    @last_amt = cost_total
    quantity.times do
      @items.push title
    end
    
  end
    
  def apply_discount
    if discount > 0 
      discount_amt = @last_amt * (discount / 100.0)
 #     binding.pry
      new_amt = @last_amt - discount_amt
      @total -= discount_amt
      return "After the discount, the total comes to $#{new_amt.floor}."
    else
      return "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @total -= @last_amt
  end
  
  
end