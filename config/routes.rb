Rails.application.routes.draw do
  resources :order_items
  resources :orders
  resources :items
  resources :vendors do 
    resources :items, only: [:index, :show]
  end
  resources :customers
  resources :sessions


  #sign up new customer 
  post '/signup', to: 'customers#create' 

  #keeping user logged in
  get '/me', to: 'cusomters#show'

  #signing user in / authenticating user
  post '/login', to: 'sessions#create'

  #signing user out
  delete '/logout', to: 'sessions#create'

  get 'vendors/:id', to: 'vendors#show'
  # get '/vendors', to: 'vendors#index'
  get '/orders/:id/items', to: 'orders#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
