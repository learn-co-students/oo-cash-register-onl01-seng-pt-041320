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
        # # item_info = {}
        # # item_info[:name] = item
        # # item_info[:price] = price
        # # item_info[:quantity] = quantity
        #we had to create a hash in order to keep the information of the item
        # we will be adding to, like the name/price/quantity of the item.
        # but also we had to pass the information of each item to somewhere 
        #that's why we added @cart class variable in order to store those items we
        # will be adding to.

        # # @cart << item_info

        # # @total += price * quantity
        # every time we add a new item to our cart it also increases our total. 
