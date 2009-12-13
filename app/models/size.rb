class Size < ActiveRecord::Base
  money :price
  belongs_to :item
end
