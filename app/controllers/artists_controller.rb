class ArtistsController < ApplicationController

    def index
        @artists = Artist.all
    end

    def show
        @artists = Artist.find(params[:id])
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

    # def artist_params

    # end

end
