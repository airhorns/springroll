class Size < ActiveRecord::Base
  money :price
  belongs_to :item
  validate :price_given
  validates_length_of :name, 
  :within => 3..40, 
  :too_short => "must have a name of 3 or more characters.", 
  :too_long => "can't be more than 40 characters.",
  :allow_nil => true
  
  def price_given
  end
end
