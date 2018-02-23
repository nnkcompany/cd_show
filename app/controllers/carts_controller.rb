class CartsController < ApplicationController

	def show

	end

	def create
	end

	def update
	end



	private
		def cart_params
	  		params.require(:cart).permit(:user_id)
		end

end
