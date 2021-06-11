class CreateAdminNotices < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_notices do |t|
      t.string :information_title
      t.text :information_body
      t.integer :admin_id

      t.timestamps
    end
  end
end
