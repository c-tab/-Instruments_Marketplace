class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :instrument_id
      t.date :booking_startdate
      t.date :booking_enddate

      t.timestamps
    end
  end
end
