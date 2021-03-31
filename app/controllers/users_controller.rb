class UsersController < ApplicationController
    #needs a show page that has links to all 
    #sections.
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def new

    end

    def create

    end

    def update

    end

    def edit

    end

    def destroy

    end

    private

    def user_params

    end
    
end
