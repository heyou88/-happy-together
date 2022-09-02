class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :offer
  enum status: [:requested, :confirmed, :rejected]
end
