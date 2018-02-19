class Product < ApplicationRecord

	attachment :image

	has_many :disks
	has_many :product_carts
	has_many :product_orders
	has_many :carts, through: :product_carts

	# belongs_to :user

end
