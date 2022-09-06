class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :offer
  enum status: [:pending, :confirmed, :rejected]
end
