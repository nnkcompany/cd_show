Rails.application.routes.draw do

      devise_for :admins, controllers: {
        sessions:      'admins/sessions',
        passwords:     'admins/passwords',
        registrations: 'admins/registrations'
    }


	  devise_for :users

    namespace :admins do
        resources :users
        resources :products
    end

	resources :users
	resources :carts
	resources :orders
	resources :products
	resource :product_carts, only: [:create,:destroy]

	# devise_for :users, :controllers => {
	# 	 :registrations => 'users/registrations',
	# 	 :sessions => 'users/sessions'"

	root 'products#index'
	post '/products' => 'products#create'
	delete '/products/:id' => 'products#destroy', as: 'destroy_product'

end
