class PlaylistQueue < ApplicationRecord
    belongs_to :artist
    belongs_to :album
    belongs_to :song
    belongs_to :playlist


    # def playlist_attributes=(playlist)
    #     self.playlist = Playlist.find_or_create_by(name: playlist[:name])
    #     self.playlist.update(playlist)
    # end
    def current_user_playlists
        self.find_by(user_id: session[:id])
    end

end
