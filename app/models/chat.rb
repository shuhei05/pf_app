class Chat < ApplicationRecord

  belongs_to :user
  belongs_to :room

  validatable :message, presence: true

end
