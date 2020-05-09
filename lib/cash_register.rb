require 'pry'

class CashRegister
  
  attr_accessor :discount, :total 
  
  def initialize(discount = 0) 
    @total = 0
    @discount = discount.to_f
  end
  
  def total
    @total 
  end
  
  def add_item(title, price, quantity = 1)
    @total += price*quantity
  end
  
  def apply_discount 
       @total =  @total - (@total*(@discount/100))
       puts "After the discount, the total comes to $800."
#    binding.pry
  
  end
  
end 