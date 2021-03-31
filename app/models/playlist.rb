class Playlist < ApplicationRecord
   belongs_to :user
   has_many :playlist_queues
   accepts_nested_attributes_for :playlist_queues

   # def playlist_queues_attributes=(playlist_queue)
   #    self.playlist_queue = PlaylistQueue.find_or_create_by()
   # end

end
