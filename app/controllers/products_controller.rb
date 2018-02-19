class ProductsController < ApplicationController

	def new
		@product = Product.new
	end

	def index
		@products = Product.all
		@products = Product.page(params[:page]).reverse_order
		# @products = Product.search(params[:search])
	end

	def show
		@product = Product.find(params[:id])
	end

	def create
		@product = Product.new(product_params)
		@product.save
		redirect_to '/products'
	end

	def update
		@product = Product.find(params[:id])
		redirect_to product_path(@product.id)
	end

	def destroy
		@product = Product.find(params[:id])
		redirect_to root_path
	end

private
# 以下は担当者埋めてください。

  # def product_params
    # params.require(:).permit(:title, :body, :image)
  # end


end
