class AddIntroductionToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :introduction, :text
  end
end
