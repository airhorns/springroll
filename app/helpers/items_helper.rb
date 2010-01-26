module ItemsHelper
  def pricebox(item)
    render :partial => 'pricebox', :locals => {:item => item}
  end
  
  def size_button(size)
    render :partial => 'sizebutton', :locals => {:size => size}
  end
end
