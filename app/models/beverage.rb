class Beverage < ActiveRecord::Base
  belongs_to :order
  attr_accessible :size, :type, :order, :order_id

  set_inheritance_column "not_sti"
end
