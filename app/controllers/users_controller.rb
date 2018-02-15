class UsersController < ApplicationController

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id]), redirect_to user_path(@user.id)
	end

	def destroy
		@user = User.find(params[:id]), redirect_to root_path
	end

end
