class OrdersController < ApplicationController

	def new
		@order = Order.new
	end

	def create
		@order = Order.new(order_params)
	end


end
