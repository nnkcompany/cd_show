class ProductsController < ApplicationController

	def new
		@product = Product.new
	end

	def index
		# @products = Product.page(params[:page]).reverse_order
		@products = Product.all.reverse_order
		@q = Product.search(params[:q])
		@products = @q.result(distinct: true).page(params[:page])
	end

	def show
		@product = Product.find(params[:id])
	end

	def create
		@product = Product.new(product_params)
		@product.save
		redirect_to '/products'
	end

	def edit
		@product = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])
		@product.update(product_params)
		redirect_to product_path(@product.id)
	end

	def destroy
		@product = Product.find(params[:id])
		@product.destroy
		redirect_to root_path
	end

private

  def product_params
    params.require(:product).permit(:artist_name, :artist_name_kana, :artist_name_eng, :cd_name, :price, :label_name, :label_name_kana, :label_name_eng, :category, :quantity, :cd_image )
  end

end
