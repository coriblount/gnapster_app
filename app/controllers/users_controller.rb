class UsersController < ApplicationController

    before_action :current_user, only: [:show]
    before_action :not_logged_in, only: [:show]

    def index
        @users = User.all
    end


    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.valid?
            @user.save
            session[:id] = @user.id
            redirect_to @user
        else
            flash[:errors] = @user.errors.full_messages
            redirect_to new_user_path
         end
    end

    def edit  
        @user = @current_user
    end

    def show
        @user = User.find(session[:id])
        @playlists = Playlist.all
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end



end
