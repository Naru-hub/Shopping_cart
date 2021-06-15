Rails.application.routes.draw do
  get 'products/index'
 root 'home#index'

 resources :products

 resources :carts, only: [:show]

 post '/add_item' => 'carts#add_item'
 post '/update_item' => 'carts#update_item'
 delete '/delete_item' => 'carts#delete_item'
end
