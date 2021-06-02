class CreateOrderDetalis < ActiveRecord::Migration[5.2]
  def change
    create_table :order_detalis do |t|
      t.boolean :is_active
      t.integer :product_id
      t.integer :order_id

      t.timestamps
    end
  end
end
