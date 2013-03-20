class Burger < ActiveRecord::Base
  belongs_to :order
  attr_accessible :bun, :cheese, :meat, :order, :order_id
  validates :bun, :presence => true

  #scope :vegetarians, where(meat: "Veggie")

  attr_accessor :new_customer_name
  before_save :create_order_from_name

  set_inheritance_column "not_sti"

  def create_order_from_name
  	create_order(:customer => new_customer_name) unless new_customer_name.blank?
  end  
end
