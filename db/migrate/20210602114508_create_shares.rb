class CreateShares < ActiveRecord::Migration[5.2]
  def change
    create_table :shares do |t|
      t.text :share_information
      t.integer :user_id

      t.timestamps
    end
  end
end
