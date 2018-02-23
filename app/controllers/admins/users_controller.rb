class Admins::UsersController < ApplicationController
before_action :authenticate_admin!
layout 'admin.application'

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def edit
		@users = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		@user.update(user_params)
		redirect_to admins_user_path(@user)
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to admins_users_path
	end

	private

	def user_params
		params.require(:user).permit(:last_name, :last_name_kana, :first_name, :first_name_kana, :zip, :address, :tell)
	end
end
