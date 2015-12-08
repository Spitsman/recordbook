class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception

  helper_method :current_user, :current_user_session

  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end

	def current_user 
	 return @current_user if defined?(@current_user)
	 @current_user = current_user_session && current_user_session.user
  end

	def require_user 
  	redirect_to login_path unless current_user 
	end

  def require_no_user
    redirect_to root_path if current_user
  end

  def require_admin
    redirect_to root_path unless @current_user.role != "admin"
  end
end
