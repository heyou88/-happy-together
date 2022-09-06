class Offer < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_one :booking
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :address, :pet, :description, :title, :end_date, :start_date, :neighborhood, presence: true
  validates :end_date, comparison: { greater_than: :start_date }
end
