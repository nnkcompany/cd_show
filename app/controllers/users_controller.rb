class UsersController < ApplicationController

	def show
		@user = User.find(params[:id])
	end

	def new
	cart = Cart.new
    cart.user_id = current_user.id
    cart.save
    # binding.pry
    redirect_to root_path
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(current_user.id)
		if @user.update(user_params)
			redirect_to user_path(current_user.id)
		else
			redirect_to edit_user_path(@user)
		end
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
