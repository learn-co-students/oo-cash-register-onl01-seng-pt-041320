require 'pry'

class CashRegister
  
  attr_accessor :discount, :total 
  
  def initialize(total = 0) 
    @total = total
    @discount = 20
  end
  
  def total
    @total 
  end
  
  def add_item(title, price, quantity = 1)
    @total += price*quantity
  end
  
  def apply_discount 
    total - @discount
  
  end
  
end 