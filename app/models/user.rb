class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :cart_items ,dependent: :destroy
  has_many :orders, dependent: :destroy
  has_many :shares ,dependent: :destroy
  has_many :user_rooms
  has_many :chats
  has_many :rooms, through: :user_rooms

  validates :email, :name, :postal_code, :phone_number, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
