class PlaylistQueuesController < ApplicationController

    def index
        @playlist_queues = PlaylistQueue.all
    end

    def show
        @playlist_queue = PlaylistQueue.find(params[:id])
    end

    def new
        @playlist_queue = PlaylistQueue.new
    end

    def create
        @playlist_queue = PlaylistQueue.new(playlist_params)
        @playlist_queue.save
        redirect_to @playlist_queue.playlist
    end

    def update

    end

    def edit

    end

    def destroy

    end

    private

    def playlist_queues_params
        params.require(:playlist_queue).permit(
            :playlist_id,
            :artist_id,
            :album_id,
            :song_id
        )
    end

end
