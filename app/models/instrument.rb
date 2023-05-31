class Instrument < ApplicationRecord
  belongs_to :user
  validates :category, presence: true
  validates :price, presence: true
  validates :serial, presence: true, uniqueness: true
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
