Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  put '/bookings/:id', to: 'bookings#update'
  delete '/bookings/:id', to: 'bookings#destroy', as: :destroy_booking
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :chatrooms, only: [:show, :index, :create] do
   resources :messages, only: :create
  end

  # resources :users do
  #   resources :bookings, only: [:index, :new, :create]
  # end


  get "pending", to: "bookings#pending"
  get "confirm", to: "bookings#confirm"
  get "profiles/users/:id", to: "pages#profile", as: :profile
  get "map", to: "offers#map"
  resources :offers
end
