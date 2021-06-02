class CartItem < ApplicationRecord

  belongs_to :user
  belongs_to :product

  validates :customer_id, :product_id, :quantity, presence: true

  validates :quantity, numericality: { only_integer: true }
end
