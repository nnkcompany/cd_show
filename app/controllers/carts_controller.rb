class CartsController < ApplicationController

	def show

	end

	def create
	end

	def update
		@cart = Cart.find(params[:id])
		@cart.update(order_params)
		redirect_to cart_path(@cart)
	end



	private
		def cart_params
	  		params.require(:cart).permit(:user_id)
		end

end
