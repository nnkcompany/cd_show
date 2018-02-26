class Order < ApplicationRecord

	has_many :product_orders , :dependent => :destroy

	belongs_to :address, optional: true
	belongs_to :user

end
