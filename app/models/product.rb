
class Product < ApplicationRecord

	attachment :cd_image

	has_many :product_carts, :dependent => :destroy
	has_many :product_orders
	# has_many :carts, through: :product_carts

	has_many :discs
	belongs_to :admin
	accepts_nested_attributes_for :discs, allow_destroy: true

validates :quantity, numericality: { only_integer: true }
validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }


end
