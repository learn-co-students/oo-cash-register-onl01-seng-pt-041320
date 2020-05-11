require 'pry'
class CashRegister
   
    attr_accessor :total, :discount, :quantity, :items_in_cart, :last_transaction
    
    def initialize (discount = 0)
        # sets an instance variable @total on initialization to zero
        @total = 0
        # optionally takes an employee discount on initialization
        @discount = discount
        @items_in_cart = []
         

    end

    # def total
    #     # returns the current total
    #     @total 
    # end

    def add_item (title, price, quantity = 1)
        # accepts a title and a price and increases the total
        # also accepts an optional quantity
        # doesn't forget about the previous total 
        self.total += price*quantity
        quantity.times do
        items_in_cart << title
        end
    end

    def apply_discount
        # applies the discount to the total price 
        # discount_int = []
        # new_total = []
        # discount_int = total*discount.to_f/100
        # new_total = total-discount_int
        # total = new_total.to_i
        if @discount == 0
            return "There is no discount to apply."
        elsif
          @total -= @total * @discount / 100
          return "After the discount, the total comes to $#{@total}."
        end 

    end

        def items
            @items_in_cart
        end

        def void_last_transaction
            self.total = self.total - self.last_transaction
            # binding.pry

        end
end