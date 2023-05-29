class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :instrument
  valdiates :booking_startdate, presence: true
  valdiates :booking_enddate, presence: true
end
