Rails.application.routes.draw do
  # resources :reservations
  resources :restaurants
  resources :reservations, only: [:index, :create]
  resources :users
  resources :reviews, only: [:index, :new, :create]

 #------------------------Sessions---------------------------------------
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
