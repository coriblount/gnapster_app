class PlaylistQueue < ApplicationRecord
    belongs_to :artist
    belongs_to :album
    belongs_to :song
    belongs_to :playlist

    def current_user_playlists
        self.find_by(user_id: session[:id])
    end

    def song_length
        seconds = self.song.length
        minutes, seconds = seconds.divmod(60)
        "#{minutes} min #{seconds} s."
    end

    def song_rating
        if self.song.rating >= 5
            "⭐ ⭐ ⭐ ⭐ ⭐"
        elsif self.song.rating >= 4
            "⭐ ⭐ ⭐ ⭐"
        elsif self.song.rating >= 3
            "⭐ ⭐ ⭐"
        elsif self.song.rating >= 2
            "⭐ ⭐"
        elsif self.song.rating >= 1
            "⭐"
        elsif self.song.rating < 1
            "☹"
        end
    end
    
end
