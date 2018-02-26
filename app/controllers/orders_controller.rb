class OrdersController < ApplicationController

  def new
  	@order = Order.new
  end

	def create
	  	@order = Order.new(order_params)
		  @order.user_id = current_user.id
     # binding.pry
		if @order.save
			 product_carts = current_user.cart.product_carts
			 product_carts.each do |product_cart|
  			product_order = ProductOrder.new
  			product_order.product_id = product_cart.product_id
  			product_order.order_id = @order.id
  			product_order.save
  			product_cart.destroy
  		end
  	end
    # binding.pry
  	redirect_to root_path
  end

  private
    def order_params
    params.require(:order).permit(:user_id,:freight,:address,:status,:last_name,:last_name_kana,:first_name,:first_name_kana,:zip)
    end

    def product_order_params
      params.require(:product_order).permit(:product_id, :order_id)
    end
end
