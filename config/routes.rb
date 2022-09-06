Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  put '/booking/:id', to: 'bookings#update'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :chatrooms, only: [:show, :index, :create] do
   resources :messages, only: :create
  end

  # resources :users do
  #   resources :bookings, only: [:index, :new, :create]
  # end

  get "profiles/users/:id", to: "pages#profile", as: :profile

  resources :offers
end
