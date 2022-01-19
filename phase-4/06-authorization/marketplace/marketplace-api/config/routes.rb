Rails.application.routes.draw do
  # resources :category_items
  resources :categories, only: [:index]
  resources :items, only: [:index, :show, :create, :update]
  resources :users, only: [:create, :destroy]

  get '/me', to: "users#show"
  post '/login', to: "sessions#login"
  delete '/logout', to: "sessions#logout"
  # get '/items', to: 'items#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
