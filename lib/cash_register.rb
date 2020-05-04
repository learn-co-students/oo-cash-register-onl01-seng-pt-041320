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