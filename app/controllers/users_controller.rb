class UsersController < ApplicationController

	helper_method :resource_user, :users_collection, :user_policy

	before_action :require_user, only: [:show, :all]
	before_action :require_no_user, only: [:new, :create]

	def show
	end

	def new
	end

	def all
		authorize
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

	def authorize
		redirect_to root_path unless user_policy.show? # должен писать "в доступе отказано"
	end

	def user_policy
		@user_policy ||= UserPolicy.new(current_user)
	end

	def users_collection
		@users_collection ||= User.all
	end

	def resource_user
		@resource_user ||= User.new(params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation))
	end

end