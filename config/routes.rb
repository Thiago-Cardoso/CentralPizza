Rails.application.routes.draw do
  root 'homepage#index'
  get 'homepage/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end