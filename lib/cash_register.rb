require 'pry'

#code goes here
class CashRegister
    attr_accessor :discount, :total, :add_item

    def initialize (discount=nil)
        @total = 0
        @discount = discount 
        @items = []
    end

    def total
        @total
    end

    def add_item (title, price, qty=1)
        @@item_price = price * qty
        @total = @total + @@item_price
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
        "After the discount, the total comes to $#{@total.to_i}."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        @total = @total - @@item_price
       # binding.pry
    end
end

