class CashRegister
    attr_accessor :discount, :total, :add_item
    def initialize (discount=nil)
       @total = total
        @total = 0
        @discount = discount 
        @items = []
    end
    def total
        @total
    end
    def add_item (title, price, qty=1)
        @item_price = price * qty
        @total = @total + @item_price
        if qty != 1
            i=0
            while i < qty
                @items << title
                i += 1
            end
        else
            @items << title
        end
        @total
    end
    def apply_discount
        if @discount == nil
            "There is no discount to apply."
        else
        @total = @total - @total * (@discount/100.0)
        total = @total.to_i
        "After the discount, the total comes to $#{total}."
        end
    end
    def items
        @items
    end
    def void_last_transaction
        @total -= @item_price
       # binding.pry
    end
end

# require 'pry'
# class CashRegister  
   
#     attr_accessor :total, :discount, :quantity, :items_in_cart, :last_transaction
    
#     def initialize (discount = 0) # optionally takes an employee discount on initialization
#         # sets an instance variable @total on initialization to zero
#         @total = 0
#         # optionally takes an employee discount on initialization
#         @discount = discount
#         @items_in_cart = []
         

#     end

#     def total
#         # returns the current total
#         @total 
#     end

#     def add_item (title, price, quantity = 1)
# #         # accepts a title and a price and increases the total
# #         # also accepts an optional quantity
# #         # doesn't forget about the previous total 
#         @last_transaction += price*quantity
#         @total = @total + @last_transaction  
#         quantity.times do
#         items_in_cart << title
#         end 
#     end
    

#     def apply_discount
# #         # applies the discount to the total price 
# #         # discount_int = []
# #         # new_total = []
# #         # discount_int = total*discount.to_f/100
# #         # new_total = total-discount_int
# #         # total = new_total.to_i
#         if @discount == 0
#             return "There is no discount to apply."
#         elsif
#           @total -= @total * @discount / 100
#           return "After the discount, the total comes to $#{@total}."
#         end 

#     end

#     def items
#             @items_in_cart
#     end

#     def void_last_transaction
           
#         @total -= @last_transaction
#         # binding.pry
#     end
# end