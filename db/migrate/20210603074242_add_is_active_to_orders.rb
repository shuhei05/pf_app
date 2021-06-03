class AddIsActiveToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :is_active, :boolean
  end
end
