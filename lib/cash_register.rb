require 'pry'
class CashRegister
<<<<<<< HEAD
  attr_accessor :discount, :total, :qty, :items, :costs, :sub_tot
=======
  attr_accessor :discount, :total, :qty, :items
>>>>>>> 8964ebb49b2f4147b50a20640e6a5a0cc6ad888e
  
  
  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
<<<<<<< HEAD
    @costs = []
    @sub_tot = 0
=======
>>>>>>> 8964ebb49b2f4147b50a20640e6a5a0cc6ad888e
  end
  
  def total
    @total
  end
  
  def add_item(i, amt, qty=1)
<<<<<<< HEAD
    @sub_tot = amt*qty
    @total = self.total + @sub_tot
    qty.times {self.items.push(i)}
=======
   
    @total = self.total + amt*qty
    qty.times {self.items.push(i)}
    #last_item = self
    #binding.pry
>>>>>>> 8964ebb49b2f4147b50a20640e6a5a0cc6ad888e
  end
  
  def apply_discount
    if @discount > 1
      @total = self.total - (discount.to_f/100*1000)
      "After the discount, the total comes to $#{@total.floor}."
    else 
      "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
<<<<<<< HEAD
  def void_last_transaction
    @total -= self.sub_tot
  end
  
=======
  def self.void
>>>>>>> 8964ebb49b2f4147b50a20640e6a5a0cc6ad888e
end
