class Beverage < ActiveRecord::Base
  belongs_to :order
  attr_accessible :size, :type
end
