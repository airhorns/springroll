class Cart < ActiveRecord::Base
  has_many :items, :through => :cart_items
  attr_reader :shelf
  
  def shelf(item)
    session[shelf][self.id] ||= []
    session[shelf][self.id] << item
  end
  
  def add_item(item)
    @items << product
  end
  
  def add_shelf
    add_item(@shelf)
    @shelf = nil
  end
end

@cart.items

@cart.shelf.items

@cart