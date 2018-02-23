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
        resources :homes,only: [:index]
    end

	resources :users
	resources :carts
	resources :orders
	resources :products, only: [:index,:show,:edit,:update]
	resource :product_carts, only: [:create,:destroy]


	root 'products#index'
	post '/products' => 'products#create'
	delete '/products/:id' => 'products#destroy', as: 'destroy_product'

end
