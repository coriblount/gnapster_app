class PlaylistsController < ApplicationController

    def index
        @playlists = Playlist.all
        
    end

    def show
        @playlist = Playlist.find(params[:id])
    end

    def new
        @playlist = Playlist.new
        @playlist.playlist_queues.build
    end

    def create
        @playlist = Playlist.new(playlist_params)
        @playlist.save
        redirect_to new_playlist_queue_path(@playlist_queue)
    end

    def update
        @playlist = Playlist.find(params[:id])
        @playlist.update(playlist_params)
        redirect_to @playlist
    end

    def edit
        @playlist = Playlist.find(params[:id])
    end

    def destroy
        @playlist = Playlist.find(params[:id])
        @playlist.destroy
    end

    private

    def playlist_params
        params.require(:playlist).permit(
            :name,
            :user_id)
    end

end
