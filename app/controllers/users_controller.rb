class UsersController < ApplicationController

	before_action :require_user, only: [:show]
	before_action :resource_no_user, only: [:new, :create]

	def show
	end

	def new
	end

	def create
	  if resource_user.save
	  	redirect_to root_path
	 	else 
	 		render :new
		end 
	end

	def destroy
		User.find(params[:required_user]).destroy
		redirect_to root_path
	end

	private

	def resource_user
		@resource_user ||= User.new(params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation))
	end

end