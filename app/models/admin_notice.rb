class AdminNotice < ApplicationRecord
  
  belongs_to :adimn
  
  validates :information_title, :information_body, presence: true
end
