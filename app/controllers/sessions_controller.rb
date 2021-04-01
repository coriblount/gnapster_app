class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(username: params[:user][:username])
    if @user && @user.authenticate(params[:user][:password])
      session[:id] = @user.id
      redirect_to @user
    else
      flash[:errors] = ["Username or password incorrect. Please try again."]
      redirect_to login_path
      end
    end

  def destroy
    session.clear
    redirect_to '/login'
  end

end
