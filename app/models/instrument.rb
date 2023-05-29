class Instrument < ApplicationRecord
  belongs_to :user_id
  validates :type, presence: true
  validates :price, presence: true
  validates :serial, presence: true, uniqueness: true
end
