class CashRegister
  attr_accessor :total, :discount
  @@total = 0
  
  def initialize(discount = 0)
    @discount = discount
  end

  def self.total
    @@total
  end
  
  def add_item(item, price, quantity = 0)
    
    @item = item 
    @price = price
    @quantity = quantity
    self.total += price
    

    
    
  end
  
end
