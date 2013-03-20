class Order < ActiveRecord::Base
  attr_accessible :customer, :price
  validates :customer, :presence => true

  scope :big_spenders, where('price > ?', 30)

  set_inheritance_column "not_sti"
end
