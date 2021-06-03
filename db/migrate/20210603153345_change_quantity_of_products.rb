class ChangeQuantityOfProducts < ActiveRecord::Migration[5.2]
  def up
    change_column :products, :quantity, :integer, default: 0
  end

  def down
    change_column :products, :quantity, :integer
  end
end
