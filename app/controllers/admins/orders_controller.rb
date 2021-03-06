class Admins::OrdersController < ApplicationController
before_action :authenticate_admin!
layout 'admin.application'

	def index
		@orders = Order.all
	end

	def show
		@order = Order.find(params[:id])
	end

	def create
		@order = Order.new(order_params)
		@order.admin_id = current_admin.id
		# binding.pry
		@order.save
		redirect_to admins_orders_path
	end


	def edit
		@orders = Order.find(params[:id])
	end

	def update
		@order = Order.find(params[:id])
		@order.update(order_params)
		redirect_to admins_orders_path
	end


	def destroy
		@order = order.find(params[:id])
		@order.destroy
		redirect_to orders_path
	end

  	private
    def order_params
    params.require(:order).permit(:user_id,:freight,:address,:status,:last_name,:last_name_kana,:first_name,:first_name_kana,:zip)
    end
end
