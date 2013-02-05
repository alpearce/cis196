class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.text :customer
      t.decimal :price

      t.timestamps
    end
  end
end
