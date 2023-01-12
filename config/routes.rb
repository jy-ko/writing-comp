Rails.application.routes.draw do
  resources :submissions
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  require "sidekiq/web"
  mount Sidekiq::Web => '/sidekiq'
  root to: "submissions#index"
end
