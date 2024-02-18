Rails.application.routes.draw do
  resources :accounts, only: [:show]
  get '/mypage' => 'accounts#mypage'
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }
  root to: "homes#top"
  post '/homes/guest_sign_in', to: 'homes#guest_sign_in'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
