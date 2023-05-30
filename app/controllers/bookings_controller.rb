class BookingsController < ApplicationController
  before_action :set_instrument, only: [:new, :create]
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.instrument = @instrument
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_instrument
    @instrument = Instrument.find(params[:instrument_id])
  end

  def booking_params
    params.require(:booking).permit(:booking_startdate, :booking_enddate, :user_id)
  end
end
