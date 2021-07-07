require 'pry'
class CashRegister
    attr_accessor :discount, :total, :price, :quantity
    
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @grocery_bag = []
    end

    def add_item(title, price, quantity = 1)
        @total += (price * quantity)
        
        counter = 0
        while counter < quantity
            @grocery_bag << title
            @price = price
            @quantity = quantity
            counter += 1
        end       
    end

    def apply_discount
        @total -= (@total * (@discount.to_f / 100))

        if self.discount > 0
            "After the discount, the total comes to $#{self.total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def items
       @grocery_bag
    end

    def void_last_transaction
        @total -= (@price * @quantity)
        #binding.pry
    end
end