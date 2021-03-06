class Admins::ProductsController < ApplicationController
before_action :authenticate_admin!
layout 'admin.application'

	def index
		@product = Product.all
	end

	def show
		@products = Product.find(params[:id])
	end

	def edit
		@products = Product.find(params[:id])
	end

	def create
		@product = Product.new(product_params)
		@product.admin_id = current_admin.id
		# binding.pry
		if @product.save
			redirect_to admins_products_path
		else
			redirect_to new_admins_product_path
		end
	end

	def new
		@product = Product.new
		@disc = @product.discs.build
		@disc.songs.build
	end

	def update
		@product = Product.find(params[:id])
		@product.update(product_params)
		redirect_to product_path(@product)
	end


	def destroy
		@product = Product.find(params[:id])
		@product.destroy
		redirect_to admins_products_path
	end


		private
	def product_params
		params.require(:product).permit(
			:artist_name,
			:artist_name_kana,
			:artist_name_eng,
			:cd_name,
			:price,
			:label_name,
			:label_name_kana,
			:label_name_eng,
			:category,
			:quantity,
			:cd_image,
			:discs_attributes => [:id,
								  :disc_name,
								  :product_id,
								  :disc_number,
			 					  :_destroy,
			 					  :songs_attributes => [:id,
			 					  						:song_title,
			 					  						:disc_id,
			 					  						:song_number,
			 					  						:_destroy
			 					  							]
			 					  		]
			 					  )
	end
end
