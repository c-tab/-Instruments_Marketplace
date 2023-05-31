class InstrumentsController < ApplicationController
  def index
    @instruments = Instrument.all
  end

  def show
    @instrument = Instrument.find(params[:id])
    @markers = @instrument.geocode.map do |instrument|
      {
        lat: @instrument.latitude,
        lng: @instrument.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {instrument: @instrument})
      }
    end
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
    params.require(:instrument).permit(:category, :price, :serial, :user_id, :booking_id, :photo, :address)
  end
end
