class Order < ActiveRecord::Base
  attr_accessible :customer, :price
  
end
