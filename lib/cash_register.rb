require 'pry'

class CashRegister
      attr_accessor :total, :discount, :item
      @@items = []
      @@last_item = @@items.last

      def initialize(discount = 0)
        @total = 0
        @discount = discount
      end

      def add_item(title, price, quanity = 1)
        @@items << title
        @total += price * quanity
        @total
        #binding.pry
        @@items
      end   

      def apply_discount
       if @discount > 0
        employee_discount = (@discount.to_f/100) * @total
            self.total = @total - employee_discount
            return "After the discount, the total comes to $#{@total.to_i}."
       else 
        return "There is no discount to apply."
      end
    end

    def items
        #binding.pry
        @@items
    end


end
