Rails.application.routes.draw do
  resources :accounts, only: [:show]
  get '/accounts/favorite_show/:id' => 'accounts#favorite_show'
  get '/mypage' => 'accounts#mypage'
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }
  root to: "posts#new"
  post '/homes/guest_sign_in', to: 'homes#guest_sign_in'
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
