class PlaylistQueue < ApplicationRecord
    belongs_to :artist
    belongs_to :album
    belongs_to :song
    has_many :playlists
end
