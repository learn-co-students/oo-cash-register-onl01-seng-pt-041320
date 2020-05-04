
# class CashRegister
#   attr_accessor :total, :discount, :price, :items

#   def initialize(discount = 0)
#     @total = 0
#     @discount = discount
#     @items = []
#   end

#   def add_item(item, price, quantity = 1)
#     @price = price
#     @total += price * quantity
#     if quantity > 1
#       counter = 0
#       while counter < quantity
#         @items << item
#         counter += 1
#       end
#     else
#       @items << item
#     end
#   end

#   def apply_discount
#     if @discount > 0
#       @to_take_off = (price * discount)/100
#       @total -= @to_take_off
#       return "After the discount, the total comes to $#{total}."
#     else
#       return "There is no discount to apply."
#     end
#   end

#   def void_last_transaction
#     @total -= @price
#   end

# end

# class CashRegister

#   attr_accessor :total, :discount, :last_transaction_amount, :items

#   def initialize(discount = 0)
#     @total = 0
#     @discount = discount
#     @items = []
#   end


#   def add_item(title,price,quantity = 1)
#     if quantity>1
#       i=0
#       while i<quantity
#         @items << title
#         i+=1
#       end
#     else
#       @items << title
#     end
#     @total += price*quantity
#     @last_transaction_amount = @total
#     @total
#   end

#   def apply_discount()
#     if @discount > 0
#       @discount = @discount/100.to_f
#       @total = @total - (@total * (@discount))
#       "After the discount, the total comes to $#{@total.to_i}."
#     else
#       "There is no discount to apply."
#     end
#   end


#   def void_last_transaction()
#     @total -= @last_transaction_amount
   
#   end

# end

class CashRegister

    attr_accessor :total, :discount, :item, :price, :quantity, :current


    def initialize(discount = 0)
       @total = 0
       @@cart = []
       @discount = discount
    end

    def total
        @total
    end

    def add_item(item, price, quantity = 1)
        @current = 0
        @total += (price * quantity)
        while quantity > 0
            @@cart << item
            quantity -= 1
            @current += price
        end
    end

    def apply_discount
        if @discount != 0
            percent = discount * (0.01)
            employee_discount = @total * percent
            @total = @total - employee_discount
            return "After the discount, the total comes to $#{@total.ceil}."
        elsif @discount = 0
                return "There is no discount to apply."
        end
    end

    def items
        @@cart
    end

    def void_last_transaction
            @@cart.pop
            @total = @total - @current
    end
    


end