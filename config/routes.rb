Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  put '/booking/:id', to: 'bookings#update', as: :booking
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :chatrooms, only: [:show, :index, :create] do
   resources :messages, only: :create
  end

  # resources :users do
  #   resources :bookings, only: [:index, :new, :create]
  # end

  get "profile", to: "pages#profile"
  get "pending", to: "bookings#pending"
  get "confirm", to: "bookings#confirm"

  resources :offers
end
