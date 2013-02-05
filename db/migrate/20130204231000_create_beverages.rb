class CreateBeverages < ActiveRecord::Migration
  def change
    create_table :beverages do |t|
      t.string :type
      t.integer :size
      t.belongs_to :order

      t.timestamps
    end
    add_index :beverages, :order_id
  end
end
