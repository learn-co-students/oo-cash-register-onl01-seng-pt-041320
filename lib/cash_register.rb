require 'pry'
class CashRegister
    attr_accessor :discount, :total, :items, :trans

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @trans = trans
    end

    def total
        @total
    end

    def add_item(item, price, quantity = 1)
        if quantity > 1
            counter = 0
            while counter < quantity
                @items << item
                counter += 1
            end
        else
            @items << item
        end
        @trans = price * quantity
        @total += price * quantity
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

    def void_last_transaction
        if @items.empty?
            @total = 0
            return @total
        end
        @total = @total - @trans
    end

end
