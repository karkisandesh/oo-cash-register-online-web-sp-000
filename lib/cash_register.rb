class CashRegister
  attr_accessor :total, :discount
 
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(item, price, quantity = 1)
    @arr = [ ]
    @arr << item
    @arr_price = [ ]
    @price = price
    @arr_price << @price
    @quantity = quantity
    self.total += price * quantity
  end
  
  def apply_discount
    if discount != 0 
      self.discount = self.total * 20/100
      self.total = self.total - self.discount
      "After the discount, the total comes to $#{self.total}."
  else 
      "There is no discount to apply."
  end
  end
  
  def items
      @arr
  end
  
  def void_last_transaction
    self.total - @arr_price.chop
  
end
