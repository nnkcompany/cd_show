class DiscsController < ApplicationController



	def disc_params
		params.require(:disc).permit(:product_id, :disc_name, :disc_number,
			:songs_attributes => [:id, :song_title, :disc_id, :song_number,  :_destroy])
	end
end