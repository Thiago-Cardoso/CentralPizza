Rails.application.routes.draw do
  resources :orders
  resources :tables
  resources :products
  resources :positions
  devise_for :users
  resources :category_products
  root 'homepage#index'
  get 'homepage/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
