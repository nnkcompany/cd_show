class ProductCartsController < ApplicationController

def create
	# binding.pry
	@product_cart = ProductCart.new(product_cart_params)
	# @product_cart = ProductCart.find_by(:cart_id => current_user.cart.id, :product_id => params[:product_id])
	#binding.pry
	@product_cart.cart_id = current_user.cart.id
	if @product_cart.save
		redirect_to cart_path(current_user.cart.id)
	else
		render template: "carts/show"
	end
end


def destroy
	@product_cart = ProductCart.find_by(:cart_id => current_user.cart.id, :product_id => params[:product_id])
	@product_cart.destroy
	redirect_to cart_path(current_user.cart.id)
end

def update
        @product = ProductCart.find_by(:cart_id => current_user.cart.id, :product_id => params[:product_id])
        @product.update(product_cart_update_params)
        redirect_to cart_path(current_user.cart.id)
end


private
		def product_cart_params
	  		params.permit(:product_id, :cart_id)
		end

		def product_cart_update_params
	  		params.require(:product_cart).permit(:product_id, :cart_id ,:quantity)
		end

end
