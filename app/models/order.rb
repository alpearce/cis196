class Order < ActiveRecord::Base
  attr_accessible :customer, :price
  
  set_inheritance_column "not_sti"
end
