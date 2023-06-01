class Instrument < ApplicationRecord
  belongs_to :user
  validates :category, presence: true
  validates :price, presence: true
  validates :serial, presence: true, uniqueness: true
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  include PgSearch::Model
  pg_search_scope :search_by_instrument_and_location,
  against: [ :category, :address ],
  using: {
    tsearch: { prefix: true }
  }
end
