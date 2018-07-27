Rails.application.routes.draw do
  resources :positions
  devise_for :users
  root 'homepage#index'
  get 'homepage/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
