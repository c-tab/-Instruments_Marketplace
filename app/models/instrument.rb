class Instrument < ApplicationRecord
  belongs_to :user
  validates :category, presence: true
  validates :price, presence: true
  validates :serial, presence: true, uniqueness: true
  has_one_attached :photo
end
