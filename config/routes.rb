Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  put '/booking/:id', to: 'bookings#update', as: :booking
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :chatrooms, only: [:show, :index, :create] do
   resources :messages, only: :create
  end

  resources :offers

end
