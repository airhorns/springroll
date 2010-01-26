class Size < ActiveRecord::Base
  attr_accessor :validate_name
  
  money :price
  belongs_to :item
  validates_presence_of :price
  validates_length_of :name, 
  :within => 3..40, 
  :too_short => "must have a name of 3 or more characters.", 
  :too_long => "can't be more than 40 characters.",
  :allow_nil => true,
  :if => :single_size
  
  def single_size
    self.validate_name || false
  end
end
