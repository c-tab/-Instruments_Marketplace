class Booking < ApplicationRecord
  validates :booking_startdate, presence: true
  validates :booking_enddate, presence: true
end
