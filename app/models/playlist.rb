class Playlist < ApplicationRecord
   belongs_to :user
   has_many :playlist_queues
   accepts_nested_attributes_for :playlist_queues

end
