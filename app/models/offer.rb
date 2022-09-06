class Offer < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_one :booking

  validates :address, :pet, :description, :title, :end_date, :start_date, presence: true
  validates :end_date, comparison: { greater_than: :start_date }
end
