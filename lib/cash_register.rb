require 'pry'

class CashRegister
    # accessors for methods used, not objects
    attr_accessor :total, :discount, :items, :last_trasaction
    # Inittialized instance of cash register with a total of $0 
    # Added an optional employee discount.
    # Created an empty array of items for the cash register instance.
    def initialize(discount = 0)
        @total = 0 
        @discount = discount
        @items = []
    end
    # Add item to takes arguments title(item name), price, and optional argument of quantity.
    # Id no quantity is given, it defaults to 1. when adding items.
    # The total of the cash register is updated by adding the item price multiplied
    # By the quantity od items. with this methed it allow us to track the last transaction
    # That was made and add title of item into the @items array as needed to match quantity.
    def add_item(title, price, quantity = 1)
        @total += price * quantity
        @last_trasaction = price * quantity
        quantity.times {@items << title}
    end
    # Takes the optional discount value and aply discount methods 
    # Calculates the appropiate discount for the item.
    # Returns a statement either for a discounted or non discounted price.
    def apply_discount
        if discount != 0
            @total *= (100.0 - discount) / 100.0
            return "After the discount, the total comes to $#{@total.to_i}."
        else
            "There is no discount to apply."
        end
    end
    # Defined a method to voids the previous tracnsaction by using last_transaction
    # Object being tracked by the #add_item method.
    def void_last_transaction
        self.total = self.total - self.last_trasaction
    end
end