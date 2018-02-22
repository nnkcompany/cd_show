Rails.application.routes.draw do

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

	

    namespace :admins do
        resources :users
        resources :products
    end

	resources :users
	resources :carts
	resources :orders
	resources :products
	resource :product_carts, only: [:create,:destroy]


	root 'products#index'
	post '/products' => 'products#create'
	delete '/products/:id' => 'products#destroy', as: 'destroy_product'

end
