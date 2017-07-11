Rails.application.routes.draw do

	root to:"pages#home"

	get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  resources :requests
  resources :patients, only: [:index]
  resources :organizations do
  	resources :patients
  end

  resources :therapists do
  	resources :bookings, only: [:show, :new, :create, :edit, :update, :destroy]
  end

  get '/search' => 'searches#show'
  get '/message' => 'pages#message'
end
