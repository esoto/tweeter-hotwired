Rails.application.routes.draw do
  resources :posts
  resources :tweets do
    resource :likes, only: [:create, :destroy]
    resource :retweets, only: [:create, :destroy]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "tweets#index"
end
