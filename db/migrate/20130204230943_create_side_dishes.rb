class CreateSideDishes < ActiveRecord::Migration
  def change
    create_table :side_dishes do |t|
      t.string :type
      t.belongs_to :order

      t.timestamps
    end
    add_index :side_dishes, :order_id
  end
end
