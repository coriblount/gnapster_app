class UsersController < ApplicationController

    before_action :current_user, only: [:show, :edit, :update]
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

    def show
        @user = User.find(session[:id])
        @playlists = Playlist.all
    end
      
    def edit
        @user = current_user
      end

      def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            puts "Your profile was succesfully updated!"
          redirect_to @user 
        else
        flash.now[:alert] = "Something went wrong. Please try again"
          render :edit
        end
      end

      def destroy
        @user = current_user
        @user.delete
        redirect_to '/login'
      end

    private

    def user_params
     params.require(:user).permit(:username, :password, :image)
    end

end
