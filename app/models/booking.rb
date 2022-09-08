class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :offer
  has_one :chatroom, dependent: :destroy
  enum status: [:pending, :confirmed, :rejected]
end
