class Order < ActiveRecord::Base
  attr_accessible :customer, :price
  validates :customer, :presence => true

  set_inheritance_column "not_sti"
end
