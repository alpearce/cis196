class SideDish < ActiveRecord::Base
  belongs_to :order
  attr_accessible :type
end
