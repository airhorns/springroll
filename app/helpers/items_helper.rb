module ItemsHelper
  def pricebox(item)
    render :partial => 'pricebox', :locals => {:item => item}
  end
  
  def size_button(size)
    name = size.name || 'Order'
    render :partial => 'sizebutton', :locals => {:size => size, :name => name}
  end
end
