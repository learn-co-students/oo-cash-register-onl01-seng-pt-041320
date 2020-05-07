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
        x = @discount.to_f
        sale = (x/100) * @total

        sales_price = @total - sale
        new_total = sales_price.to_i
        
        if discount > 0
            @total -= sale
            return "After the discount, the total comes to $#{new_total}."
        else
            return "There is no discount to apply."
        end
    end

    def items
        @items << self.title
    end

end
