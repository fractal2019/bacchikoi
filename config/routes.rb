Rails.application.routes.draw do
  root 'products#index'
  devise_for :admins
  get "admins/top"
  get 'users/show'
  get 'products/search'
  get 'products/show'
  get 'carts/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :purchase_histories
resources :admins
resources :admins_users
resources :admins_products

end
