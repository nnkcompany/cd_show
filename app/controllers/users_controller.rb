class UsersController < ApplicationController

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(current_user.id)
		@user.update(user_params)
		redirect_to root_path
	end

	def destroy
    	@user = User.find(params[:id])
    	@user.soft_delete
    	sign_out(@user)
    	redirect_to root_path
    end

	private
	def user_params
  	params.require(:user).permit(:last_name, :last_name_kana, :first_name, :first_name_kana, :zip, :address, :tell)
	end

end
