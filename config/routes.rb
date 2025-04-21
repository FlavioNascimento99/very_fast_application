Rails.application.routes.draw do
  get "posts/new"
  get "posts/create"
  get "posts/index"
  # Define routes for the application
  get "contact/index"
  get "about/index"
  get "home/index"

  # Define a root route
  root "home#index"

  # Health check route
  get "up" => "rails/health#show", as: :rails_health_check

  # Resource?
  resources :posts, only: [:new, :create, :index]
end
