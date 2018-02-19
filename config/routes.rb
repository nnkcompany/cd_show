Rails.application.routes.draw do

	  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

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
