class PlaylistQueuesController < ApplicationController

    before_action :current_user, only: [:show]
    before_action :not_logged_in, only: [:show]

    def index
        @playlist_queues = PlaylistQueue.all
    end

    def show
        @playlist_queue = PlaylistQueue.find(params[:id])
    end

    def new
        @playlist_queue = PlaylistQueue.new
        @user = @current_user
    end

    def create
        @playlist_queue = PlaylistQueue.new(playlist_queues_params)
        @playlist_queue.save
        redirect_to @playlist_queue.playlist.user
    end

    def destroy
        @playlist_queue = PlaylistQueue.find(params[:id])
        @playlist_queue.delete
        redirect_to @playlist_queue.playlist
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
