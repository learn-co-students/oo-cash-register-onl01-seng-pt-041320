# class CashRegister 
 
#   attr_accessor :total
#   attr_reader :discount
   
# def initialize(discount = 0)
#   @total = 0 
#   @discount = discount 
  
# end

# def add_item(item, price, quantity = 1)
#   self.total += price * quantity 
# end
 
# def apply_discount
#   if discount != 0
#       self.total = (total * ((100.0 - discount.to_f)/100)).to_i
#       "After the discount, the total comes to $#{self.total}."
#     else
#       "There is no discount to apply."
#     end
#   end 
   
# def items 
#   items = ["eggs", "tomato", "tomato", "tomato"]
# end 
 
# def void_last_transaction
#   if void != 0 
#     self.total = ((total * items - void[-1].to_f)).to_i  
#   else 
#     void
#   end 
# end 
  
  
# end 


# class CashRegister
#   attr_accessor :total
#   attr_reader :discount
#   def initialize(discount = 0)
#     @total = 0
#     @discount = discount
#   end
#   def self.a_class_method
#     puts self
#   end
#   def add_item(item, price, quantity = 1)
#     #"eggs", 0.98
#     # take the price and add it to total
#     #self.total=((self.total + price))
#     self.total += price * quantity
#   end
#   def apply_discount
#     if discount != 0
#       self.total = (total * ((100.0 - discount.to_f)/100)).to_i
#       "After the discount, the total comes to $#{self.total}."
#     else
#       "There is no discount to apply."
#     end
#   end
# end

class CashRegister
  attr_accessor :total, :discount, :items, :price 
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end
  
  def add_item(items, price, quantity = 1)
    quantity.times do
      @items << items
    end
    @last_total = @total
    @total += price * quantity
    
  end 

  
  def apply_discount
    @total -= @total * @discount / 100
    if @discount == 0
      "There is no discount to apply." 
    else 
    "After the discount, the total comes to $#{@total}."
  end
end

  def void_last_transaction
    @total = @last_total
  end
end 
