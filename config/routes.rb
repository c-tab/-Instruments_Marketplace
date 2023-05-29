Rails.application.routes.draw do
  devise_for :users
  # Defines the root path route ("/")
  # root "articles#index"
  root to: "pages#home" # Home page

  get "/instruments", to: "instruments#index" # Browse offers
  get "/instruments/:id", to: "instruments#show" # View instrument details

  get "/instruments/:instrument_id/bookings/new", to: "bookings#new" # Select instrument(s) - form for creating a booking
  post "/instruments/:instrument_id/bookings", to: "bookings#create" # Select instrument(s) - create a booking

  get "/instruments/new", to: "instruments#new" # Lend instrument - form for creating a new instrument
  post "/instruments", to: "instruments#create" # Lend instrument - create a new instrument

  get "/bookings", to: "bookings#index" # View all bookings
end
