class CreateBurgers < ActiveRecord::Migration
  def change
    drop_table :burgers
   	create_table :burgers do |t|
      t.string :meat
      t.string :cheese
      t.string :bun
      t.belongs_to :order

      t.timestamps
    end
    add_index :burgers, :order_id
  end
end
