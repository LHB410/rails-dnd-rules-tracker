Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home', as: "home"

  get 'pages/profile' => 'pages#profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :rules_lists do
    resources :rules do
      member do
        post 'toggle_favorite', to: "rules#toggle_favorite"
      end
    end

  end
end
