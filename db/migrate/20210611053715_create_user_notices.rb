class CreateUserNotices < ActiveRecord::Migration[5.2]
  def change
    create_table :user_notices do |t|
      t.string :information_title
      t.text :information_body
      t.integer :user_id

      t.timestamps
    end
  end
end
