class CashRegister
  
  attr_accessor :total, :discount, :items, :last_transaction_amount
  
  # Upon init opts a discount
  def initialize(discount = 0)
    @total = 0.00           # Sets total to zero, should display current total
    @discount = discount    # Sets a discount value if there is one
    @items = []             # Store an array of items (might make this a hash)
  end
  
  def add_item(item, price, qnty = 1)
    item_total = price * qnty
    if qnty > 1
      i = 0
      while i < qnty
        @items << item
        i += 1
      end
    else
      @items << item
    end
    @total += item_total
    @last_transaction_amount = item_total
    @total
  end
  
  def apply_discount
    if discount > 0
      @discount = discount/100.to_f
      @total = (@total - (@total*@discount)).to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end
    
  def void_last_transaction
    @total = @total - @last_transaction_amount
  end
end
