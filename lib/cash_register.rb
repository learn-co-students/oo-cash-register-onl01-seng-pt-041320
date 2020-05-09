class CashRegister
    attr_accessor :total, :employee_discount, :item
  
    def initialize (employee_discount = 0)
      @total = 0
      @employee_discount = employee_discount
      @items = []
      @last_transaction = []
    end

    def add_item(item, price, quantity = 1)
        self.total += price * quantity
        quantity.times do
          @items << item
        end
        @last_transaction << [item, price, quantity]
    end

    def apply_discount
        if @employee_discount == 0
            return "There is no discount to apply."
        end
        @total -= @total * @employee_discount / 100
        return "After the discount, the total comes to $#{@total}."
    end

    def discount
        self.employee_discount
    end

    def items
        @items
    end

    def void_last_transaction
        last_transaction = @last_transaction.pop
        @total -= last_transaction[1] * last_transaction[2]
   end

        
end
