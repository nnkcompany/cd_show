class ProductCartsController < ApplicationController

def create
	@product_cart = ProductCart.new(product_cart_params)
	@product_cart.cart_id = current_user.cart.id
	@product_cart.save
	redirect_to cart_path(current_user.cart.id)
end

private
		def product_cart_params
	  		params.permit(:product_id, :cart_id)
		end

end
