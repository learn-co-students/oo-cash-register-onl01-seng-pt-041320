require 'pry'

class CashRegister
      attr_accessor :total, :discount, :items, :last_transaction

      def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
      end

      def add_item(title, price, quanity = 1)
        quanity.times do 
            @items << title
        end
        @total += price * quanity
        @total
        #binding.pry
        @last_transaction = price * quanity
        @items
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

def void_last_transaction
   @total = @total - @last_transaction
end

end
