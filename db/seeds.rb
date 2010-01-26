menus = Menu.create([{:name => "Appetizers"}, {:name => "Salads"}, {:name => "Entrees"}, {:name => "Deserts"}, {:name => "Drinks"}])
items = Item.create([{
    :name => "Sprang Roll", :description => "A tasty treat", :menu => menus.first, 
    :sizes => Size.create([{:name => "3pcs", :price => "5.99"}, {:name => "5pcs", :price => "8.99"}])
  }, {
    :name => "Salad Roll", :description => "A tasty, but also healty treat", :menu => menus.first,
    :sizes => Size.create([{:name => "3pcs", :price => "6.99"}, {:name => "5pcs", :price => "9.99"}])
  }, {
    :name => "Caesar Salad", :description => "How stale are your croutons, Brutus?", :menu => menus.second,
    :sizes => Size.create([{:name => "Small", :price => "4.99"}, {:name => "Medium", :price => "6.99"}, {:name => "Large", :price => "9.99"}])
  }, {
    :name => "Spaghetti", :description => "Extra chunky sauce", :menu => menus.third,
    :sizes => Size.create([{:price => "10.99"}])
  }, {
    :name => "Cheese Sticks", :description => "Comes with marninara sauce.", :menu => menus.third,
    :sizes => Size.create([{:price => "10.99"}])
  }, {
    :name => "Cheesecake", :description => "Everyone's weakness", :menu => menus.fourth,
    :sizes => Size.create([{:name => "1 slice", :price => "5.99"}, {:name => "2 slices", :price => "8.99"}])
  }, {
    :name => "Coffee", :description => "Gets you up in the morning", :menu => menus.fifth,
    :sizes => Size.create([{:price => "5.99"}])
  }])
  
  items.each{|i| 
    pp i.name
    i.errors.each_full {|msg| pp msg}
    
    }