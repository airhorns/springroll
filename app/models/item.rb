class Item < ActiveRecord::Base
  belongs_to :menu
  has_many :sizes, :dependent => :destroy, :validate => true
  has_many :cart_items
   
  accepts_nested_attributes_for :sizes, :allow_destroy => true
  
  validates_presence_of :name
  
  def to_param
    "#{self.id}-#{self.name.parameterize}"
  end
  
  private
  def before_validation() 
    if self.sizes.length > 1
      sizes.each do |size|
        size.validate_name = true
      end
    end
  end
end