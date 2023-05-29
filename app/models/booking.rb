class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :instrument
  validiates :booking_startdate, presence: true
  validiates :booking_enddate, presence: true
end
