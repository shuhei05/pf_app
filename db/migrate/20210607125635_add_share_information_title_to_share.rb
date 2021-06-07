class AddShareInformationTitleToShare < ActiveRecord::Migration[5.2]
  def change
    add_column :shares, :share_information_title, :string
  end
end
