class PlaylistQueue < ApplicationRecord
    belongs_to :artist, :album, :song
    has_many :playlists
end
