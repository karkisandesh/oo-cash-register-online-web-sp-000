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
    self.discount = self.total * 20/100
    self.total = self.total - self.discount
    return "After the discount, the total comes to $#{self.total}."
  end
  
end
