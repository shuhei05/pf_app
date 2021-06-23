class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :admin_notices, dependent: :destroy

  validates :email, :password, presence: true

  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable
end
