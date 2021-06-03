class ChangeIsActiveOfOrders < ActiveRecord::Migration[5.2]
  def up
    change_column :orders, :is_active, :boolean, default: false
  end

  def down
    change_column :orders, :is_active, :boolean
  end
end
