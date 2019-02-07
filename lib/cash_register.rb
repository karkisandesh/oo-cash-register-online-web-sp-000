class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(item, price, quantity = 1)
    @item = item 
    @price = price
    @quantity = quantity
    self.total += price * quantity
  end
  
  def apply_discount
    self.discount = self.total * 20.0/100
    self.total = self.discount - self.total
    puts "After the discount, the total comes to $#{new_total}"
    
  end
  
end
