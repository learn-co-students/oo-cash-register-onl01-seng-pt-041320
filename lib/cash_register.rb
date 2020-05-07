require 'pry'
class CashRegister
  attr_accessor :total, :discount, :item, :last_transaction
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << title
        counter += 1
      end
    else
      @items << title
    end
    @last_transaction = price * quantity
    @total += (price * quantity)
  end
  
  def apply_discount
    if @discount > 0
      calc_discount = @total * (@discount.to_f / 100)
      @total = @total - calc_discount
      "After the discount, the total comes to $#{@total.to_i}."
    else
      if @discount == 0
        "There is no discount to apply."
      end
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @items.pop
    @total -= @last_transaction
  end
end
