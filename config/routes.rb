Rails.application.routes.draw do
  resources :accounts, only: [:show] do
    member do
      get 'favorite_show'
      get 'comment'
    end
  end
  get '/mypage' => 'accounts#mypage'
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }
  root to: "posts#new"
  get '/homes/top', to: 'homes#top'
  get '/homes/privacy_policy', to: 'homes#privacy_policy'
  get '/homes/terms_of_service', to: 'homes#terms_of_service'
  get '/homes/how_to_use_the_app', to: 'homes#how_to_use_the_app'
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end
  resources :posts, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
    collection do
      get 'search'
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
