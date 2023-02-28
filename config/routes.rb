Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  defaults format: :json do
    resources :yogis
    resources :bookings
  end
end
