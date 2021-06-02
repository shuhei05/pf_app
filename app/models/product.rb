class Product < ApplicationRecord

  has_many :cart_items, dependent: :destroy
  has_many :order_details, dependent: :destroy

  validates :name, :introduction, presence: true
end
