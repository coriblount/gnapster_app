class SongsController < ApplicationController

    def index
        @songs = Song.all
    end

    def show
        @song = Song.find(params[:id])
    end

    # def new

    # end

    # def create

    # end

    # def update

    # end

    # def edit

    # end

    # def destroy

    # end

    # private

    # def song_params

    # end

end
