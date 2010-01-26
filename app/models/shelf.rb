class Shelf
  attr_reader :items
  def initialize
    session[:shelf] ||= []
  end
  
  def add_to_shelf
    @
  end
end