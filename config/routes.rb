Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home', as: "home"

  get 'pages/profile' => 'pages#profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :rules_lists do
    resources :rules, except: [:destroy]
  end
  resources :rules, only: [:destroy]
end
