class Menu < ActiveRecord::Base
  has_many :items
  def to_param
    "#{self.id}-#{self.name.parameterize}"
  end
end
