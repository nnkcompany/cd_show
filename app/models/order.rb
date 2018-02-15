class Order < ApplicationRecord

	has_many :product_orders , :dependent => :destroy

	belongs_to :address
	belongs_to :user

end
