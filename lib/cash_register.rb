require 'pry'
class CashRegister
  attr_accessor :discount, :total, :add_item, :qty
  def initialize(discount = 20)
    @discount = discount
    @total = 0
  end
  def total
    @total
  end
  
  def add_item(i, amt, qty=1)
    #@qty = qty
    @total = self.total + amt*qty
    #binding.pry
  end
  
  def apply_discount
    if @discount > 1
      @total = self.total - (discount.to_f/100*1000)
        return "After the discount, the total comes to $#{@total.floor}."
    else 
      return "There is no discount to apply."
    end
  end
  #binding pry
end
