class Item < ActiveRecord::Base
  belongs_to :menu
  has_many :sizes, :dependent => :destroy
  
  accepts_nested_attributes_for :sizes, :allow_destroy => true
  
  validates_presence_of :name
end
