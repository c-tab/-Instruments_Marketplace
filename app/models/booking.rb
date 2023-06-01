class Booking < ApplicationRecord
  attribute :booking_startdate, :datetime
  attribute :booking_enddate, :datetime
  belongs_to :user
  belongs_to :instrument
  validates :booking_startdate, presence: true
  validates :booking_enddate, presence: true
end
