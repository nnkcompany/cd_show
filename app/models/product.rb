
class Product < ApplicationRecord

	attachment :cd_image

	has_many :product_carts
	has_many :product_orders
	has_many :carts, through: :product_carts

	has_many :discs
	# , inverse_of: :product
	accepts_nested_attributes_for :discs, allow_destroy: true


end
