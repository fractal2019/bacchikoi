Rails.application.routes.draw do
  get 'admins_users/index'
  get 'admins_users/show'
  get 'admins_users/edit'
  get 'admins_products/index'
  get 'admins_products/new'
  get 'admins_products/show'
  get 'admins_products/edit'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :purchase_histories
resources :admins

end
