Rails.application.routes.draw do
  resources :order_items
  resources :orders
  resources :items
  resources :vendors do 
    resources :items, only: [:index, :show]
  end
  resources :customers

  get 'vendors/:id', to: 'vendors#show'
  # get '/vendors', to: 'vendors#index'
  get '/orders/:id/items', to: 'orders#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
