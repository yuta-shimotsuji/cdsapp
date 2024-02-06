Rails.application.routes.draw do
  resources :users, only: [:show]
  devise_for :users
  root to: "homes#top"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
