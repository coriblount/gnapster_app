class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

  def current_user
    User.find_by(id: session[:id])
  end

  def logged_in?
    !!current_user
  end

  def not_logged_in
    redirect_to login_path unless logged_in?
  end

  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
    
  end

end

