
require 'pry'

class CashRegister
    attr_accessor :total
    attr_reader :discount
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items_array = []
    end

    def add_item(title, price, quantity = 1)
        self.total += price * quantity
        quantity.times {@items_array << title}
        @last_transaction = price * quantity
    end
def apply_discount
    self.total = self.total - self.total * @discount/100
    if @discount > 0
     final_message = "After the discount, the total comes to $#{self.total}."
    end
    if @discount == 0
        final_message = "There is no discount to apply."
    end
     final_message
end
    def items
        @items_array
    end
    def void_last_transaction
        @total -= @last_transaction
        
    end
end