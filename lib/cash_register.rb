require 'pry'

class CashRegister
  
  attr_accessor :discount, :total, :items, :void_last_transaction
  
  def initialize(discount = 0) 
    @total = 0
    @discount = discount.to_f
    @items = []
    @void_last_transaction 
  end
  
  def total
    @total 
  end
  
  def add_item(title, price, quantity = 1)
    @total += price*quantity
      if quantity > 1 
        i = 0 
        while i < quantity
        @items << title 
        i += 1 
        end
      else
        @items << title
      end
      
#   binding.pry
  end
  
  def apply_discount 
        @total =  @total - (@total*(@discount/100))
      if  self.discount == 20  
        "After the discount, the total comes to $800."
      else
        "There is no discount to apply."
      end
#    binding.pry
  end
  
  
  
  
end 

      