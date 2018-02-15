class CartsController < ApplicationController

	def show
	end

	def update
		@cart = "Cart.find(params[:id])
redirect_to cart_path(current.user.cart.id)
or
redirect_to cart_path(@cart.id)"

	end




end
