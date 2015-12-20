class UsersController < ApplicationController

	helper_method :users_collection, :semesters_collection

	before_action :require_user, only: [:show, :all]
	before_action :require_admin, only: [:all, :create, :new, :destroy, :edit, :update]

	def show
		redirect_to admin_panel_path if resource_user.admin?
	end

	def new
	end

	def all			
	end

	def create 
		@user = User.new(user_params)
		if @user.valid? && password_confirmed? && unique_user?
			@user.save
			redirect_to admin_panel_path
		else 
			render :new
			end 
	end

	def destroy
		resource_user.destroy
		redirect_to admin_panel_path
	end

	def edit
	end

	def update
		if resource_user.update(user_params)
			redirect_to(edit_path, :notice => "Пользователь изменен")
		else 
			redirect_to(edit_path, :notice => "Что-то пошло не так")
		end
	end

	def save#wtf #upd1. sam hz, ya dumal, ty napisal
		resource_user.save
		redirect_to root_path
	end

	private

	def semesters_collection
		@semesters_collection ||= resource_user.semesters
	end

	def users_collection
		@users_collection ||= User.all
	end

	def user_params
		params.require(:user).permit(:first_name, :last_name, :email, :password)
	end

	def unique_user? 	
		!User.exists?(email: params[:user][:email])
	end

	def password_confirmed?
		params[:user][:password] == params[:user][:password_confirmation]
	end

end