class AdminNotice < ApplicationRecord

  belongs_to :admin

  validates :information_title, :information_body, presence: true
end
