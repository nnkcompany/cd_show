
class ProductCart < ApplicationRecord

	belongs_to :product
	belongs_to :cart

# def create
# 	@book_cart = BookCart.new(book_cart_params)
# end

# def destroy
# end

end
