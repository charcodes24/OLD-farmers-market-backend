Rails.application.routes.draw do
  resources :order_items
  resources :orders
  resources :items
  resources :vendors
  resources :customers

  # get '/orders/:id/items', to: 'orders#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
