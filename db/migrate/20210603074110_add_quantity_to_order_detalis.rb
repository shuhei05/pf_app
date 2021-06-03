class AddQuantityToOrderDetalis < ActiveRecord::Migration[5.2]
  def change
    add_column :order_detalis, :quantity, :integer
  end
end
