class Burger < ActiveRecord::Base
  belongs_to :order
  attr_accessible :bun, :cheese, :meat
end
