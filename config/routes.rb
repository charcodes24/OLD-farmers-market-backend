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

  #sign up new vendor
  post'/signupvendor', to: 'vendors#create'

  #keeping user logged in
  get '/me', to: 'customers#show'

  #keeping vendor logged in 
  get '/me', to: 'vendors#show'

  #signing customer in / authenticating customer
  post '/login', to: 'sessions#create'

  #signing vendor in 
  post '/login_vendor', to: 'sessions#create_vendor'

  #signing user out
  delete '/logout', to: 'sessions#destroy'

  #adding item 
  post '/add_item', to: 'items#create'

  # get '/vendors', to: 'vendors#index'
  get '/orders/:id/items', to: 'orders#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
