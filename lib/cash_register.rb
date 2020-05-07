require 'pry'
class CashRegister
    attr_accessor :discount, :total, :items

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def total
        @total
    end

    def add_item(title, price, quantity = 1)
        if quantity > 1
            price *= quantity
        end
        @total += price
    end

    def apply_discount
        #Convert discount to float
        x = @discount.to_f
        #Calculate sales discount
        sale = (x/100) * @total
        #Calculate Discounted Price
        sales_price = @total - sale
        #Convert discounted price to int
        new_total = sales_price.to_i
        
        if discount > 0
            @total -= sale
            return "After the discount, the total comes to $#{new_total}."
        else
            return "There is no discount to apply."
        end
    end

    def items
        @items
    end

end
