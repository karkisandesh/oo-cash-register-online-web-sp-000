class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(item, price, quantity = 0)
    @item = item 
    @price = price
    @quantity = quantity
    total = price + quantity

    
    
  end
  
end
