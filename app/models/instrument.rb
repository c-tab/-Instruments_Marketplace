class Instrument < ApplicationRecord
  belongs_to :user
  validates :category, presence: true
  validates :price, presence: true
  validates :serial, presence: true, uniqueness: true
end
