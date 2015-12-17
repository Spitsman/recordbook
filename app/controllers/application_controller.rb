class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception

  helper_method :current_user, :current_user_session, :resource_user


  def current_user 
    @current_user ||= User.find(session[:user_id]) if session[:user_id] 
  end

	def require_user 
  	redirect_to login_path unless current_user 
	end

  def require_no_user
    redirect_to root_path if current_user
  end

  def require_admin
    redirect_to root_path unless current_user.admin?
  end

    def resource_user
    @resource_user ||=
      if current_user.admin?
        if params[:id].nil?
          current_user
        else
          User.find(params[:id])
        end
      else
        User.find(session[:user_id])
      end
  end

end
