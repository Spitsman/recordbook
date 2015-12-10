class SessionsController < ApplicationController

	before_action :require_user, only: :destroy
	before_action :require_no_user, only: [:new, :create]

	def new
	end

	def create
	  @user = User.find_by_email(params[:session][:email])
	  if @user && @user.authenticate(params[:session][:password])
	    session[:user_id] = @user.id
	    if current_user.admin?
	    	redirect_to admin_panel_path
	    else
	    	redirect_to root_path
	  	end
	  else
	    redirect_to login_path
  	end 
	end

	def destroy
		session[:user_id] = nil 
		redirect_to login_path
	end
	
	private

  def resource_session
  	@resource_session ||= UserSession.new(params[:session])
  end

end