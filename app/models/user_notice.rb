class UserNotice < ApplicationRecord
  belongs_to :user

  validates :information_title, :information_body, presence: true
end
