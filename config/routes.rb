Rails.application.routes.draw do
  resources :products
  #resources :top
  resources :cartitems,only: [:new, :create, :destroy]
  resources :carts,only: [:show]
  
  root 'top#main'
  get 'top/main'
  get 'new/index'
  
  get "up" => "rails/health#show", as: :rails_health_check
end
