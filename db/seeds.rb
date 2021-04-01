# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Song.destroy_all
Playlist.destroy_all
Album.destroy_all
Artist.destroy_all
PlaylistQueue.destroy_all

# #users
User.create(username: "CoriB", password: "Password1", email: "corib@gmail.com", profile_picture: "google.com" )
User.create(username: "Ian", password: "123456", email: "mr.daviesian@gmail.com", profile_picture: "google.com")

# #artists

# Artist.create(name: "Plain white t's", genre: "Pop", rating: 3)
# Artist.create(name: "Lady Gaga", genre: "Pop", rating: 4)
# Artist.create(name: "Chris Stapleton", genre: "Country", rating: 5)
# Artist.create(name: "Maroon 5", genre: "Pop", rating: 5)

# #albums

# Album.create(name: "All that we needed", rating: 3, artist_id: Artist.first.id)
# Album.create(name: "The Fame", rating: 5, artist_id: Artist.second.id)
# Album.create(name: "Traveller", rating: 3, artist_id: Artist.third.id)
# Album.create(name: "Songs About Jane", rating: 5, artist_id: Artist.fourth.id)


# #songs
# Song.create(name: "Hey there Delilah", length: 180, rating: 4, artist_id: Artist.first.id, album_id: Album.first.id)
# Song.create(name: "Poker Face", length: 200,  rating: 4, artist_id: Artist.second.id, album_id: Album.second.id)
# Song.create(name: "Tennesee Whiskey", length: 300,  rating: 5, artist_id: Artist.third.id, album_id: Album.third.id)
# Song.create(name: "Sunday Morning", length: 200,  rating: 5, artist_id: Artist.fourth.id, album_id: Album.fourth.id)
# Song.create(name: "Harder to Breathe", length: 150,  rating: 5, artist_id: Artist.fourth.id, album_id: Album.fourth.id)
# Song.create(name: "This love", length: 150,  rating: 5, artist_id: Artist.fourth.id, album_id: Album.fourth.id)

# #playlist

Playlist.create(name: "Workout Tunes", user_id: User.first.id)
Playlist.create(name: "Coding Tunes", user_id: User.second.id)
Playlist.create(name: "Girls Night Out", user_id: User.first.id)
Playlist.create(name: "Study Mode", user_id: User.second.id)


# # #playlist_queues

# PlaylistQueue.create(playlist_id: Playlist.second.id, artist_id: Artist.first.id, album_id: Album.first.id, song_id: Song.first.id)
# PlaylistQueue.create(playlist_id: Playlist.third.id, artist_id: Artist.fourth.id, album_id: Album.fourth.id, song_id: Song.fifth.id)
# PlaylistQueue.create(playlist_id: Playlist.fourth.id, artist_id: Artist.third.id, album_id: Album.third.id, song_id: Song.third.id)
# PlaylistQueue.create(playlist_id: Playlist.first.id, artist_id: Artist.second.id, album_id: Album.second.id, song_id: Song.second.id)



100.times do 
  Artist.create({
        name: Faker::Music.band,
        genre: Faker::Music.genre,
        rating: rand(1..5)
})
end

50.times do
     Album.create({
            name: Faker::Music.album, 
            rating: rand(1..5),
            artist_id: rand(1..100)
})
end

100.times do
       Song.create({
        name: Faker::Music::Phish.song,
        length: rand(100..300),
        rating: rand(1..5),
        artist_id: rand(1..100),
        album_id: rand(1..50)
})
end 

50.times do 
  PlaylistQueue.create({
    playlist_id: rand(1..10),
    artist_id: rand(1..100),
    album_id: rand(1..50),
    song_id: rand(1..100)
})
end