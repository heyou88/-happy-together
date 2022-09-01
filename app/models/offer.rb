class Offer < ApplicationRecord
  belongs_to :user
  validates :name, address, pet, description, title, end_date, start_date presence: true
  validates :start_date, comparison: { greater_than: :end_date }
end
