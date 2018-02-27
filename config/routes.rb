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
        resources :orders
        resources :homes,only: [:index]
    end

	resources :users
	resources :carts
	resources :orders


	resources :products do
		resource :product_carts, only: [:create,:destroy,:update]
	end

	resources :products, only: [:index,:show,:edit,:update]

	root 'products#index'
	delete '/products/:id' => 'products#destroy', as: 'destroy_product'

end
