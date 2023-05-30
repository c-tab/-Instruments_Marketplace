class InstrumentsController < ApplicationController
  def index
    @instruments = Instrument.all
  end

  def show
    @instrument = Instrument.find(params[:id])
  end

  def new
    @instrument = Instrument.new
  end

  def create
    @instrument = Instrument.new(instrument_params)
    @instrument.user = current_user
    if @instrument.save
      redirect_to instrument_path(@instrument)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def instrument_params
    params.require(:instrument).permit(:category, :price, :serial, :user_id, :booking_id, :photo)
  end
end

# get "/instruments", to: "instruments#index" # Browse offers
#   get "/instruments/:id", to: "instruments#show" # View instrument details

#   get "/instruments/:instrument_id/bookings/new", to: "bookings#new" # Select instrument(s) - form for creating a booking
#   post "/instruments/:instrument_id/bookings", to: "bookings#create" # Select instrument(s) - create a booking

#   get "/instruments/new", to: "instruments#new" # Lend instrument - form for creating a new instrument
#   post "/instruments", to: "instruments#create" # Lend instrument - create a new instrument

#   get "/bookings", to: "bookings#index" # View all bookings
