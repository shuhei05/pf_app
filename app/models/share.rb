class Share < ApplicationRecord

  belongs_to :user

  validates :share_information, :user_id, presence: true

end
