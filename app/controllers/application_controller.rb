class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  private :current_user

  def authenticate_user!
    if session[:user_id]
      current_user
    else
      redirect_to root_path
    end
  end
  private :authenticate_user!

end
