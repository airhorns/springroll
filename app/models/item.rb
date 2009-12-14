class Item < ActiveRecord::Base
  belongs_to :menu
  has_many :sizes, :dependent => :destroy
  
  accepts_nested_attributes_for :sizes, :allow_destroy => true
  
  validate :must_have_sizes
  validates_presence_of :name
  
  private
  def must_have_sizes
    if @sizes.length > 1
      @sizes.validates_presence_of :name
    end
  end
end
