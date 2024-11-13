Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  #get "restaurants", to: "restaurants#index"

  #get "restaurants/new", to: "restaurants#new"
 # post "restaurants", to: "restaurants#create"

  ## get "restaurants/new", to: "reviews#new"
  ## post "restaurants/:id/reviews", to: "reviews#create"

  #get "/restaurants/:id", to: "restaurants#show" , as: :restaurant

  resources :restaurants, only: [:index, :show, :new, :create, :destroy] do
    resources :reviews, only: [:create]
    #restaurant_reviews POST   /restaurants/:restaurant_id/reviews(.:format)     reviews#create
  end
end
