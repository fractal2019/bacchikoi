Rails.application.routes.draw do
  root 'products#index'

  devise_for :admins, controllers: {
  	sessions:      'admins/sessions',
  	passwords:     'admins/passwords',
  	registrations: 'admins/registrations'
  }
  devise_for :users, controllers: {
  	sessions:      'users/sessions',
  	passwords:     'users/passwords',
  	registrations: 'users/registrations'
  }

  get "admins/top"
  get 'products/search' => "products#search", as: "search"
  get 'products/show'
  get 'carts/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :users, only: [:show, :index]
resources :purchase_histories
resources :admins
resources :admins_users
resources :admins_products
resources :carts, only: [:show]

post '/add_content' => 'carts#add_content'
post '/update_content' => 'carts#update_content'
delete '/delete_content' => 'carts#delete_content'

end