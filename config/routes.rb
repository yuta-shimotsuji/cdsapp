Rails.application.routes.draw do
  resources :accounts, only: [:show] do
    member do
      get 'favorite_show'
    end
  end
  get '/mypage' => 'accounts#mypage'
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }
  root to: "posts#new"
  post '/homes/guest_sign_in', to: 'homes#guest_sign_in'
  get '/homes/privacy_policy', to: 'homes#privacy_policy'
  get '/homes/terms_of_service', to: 'homes#terms_of_service'
  get '/homes/how_to_use_the_app', to: 'homes#how_to_use_the_app'
  resources :posts, only: [:new, :create, :show, :edit, :update, :destroy] do
    resource :favorites, only: [:create, :destroy]
    collection do
      get 'search'
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
