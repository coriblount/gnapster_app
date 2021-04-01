# README
# GNAPSTERAPP


# Deliverables --  MVP

<!-- * User can sign/out -->

<!-- * User can create new profile -->

<!-- * CRUD username/password -->

<!-- * User can Add Songs to their Playlist -->

<!-- * User can remove songs from Playlist -->

<!-- * User can create new playlist -->

* User can rate albums/songs - ****Stretch

* User can play songs - ****Stretch

* User can see most listened to songs - Analytics

<!-- * User can delete playlist -->

* Add Faker Gem Data

* Password confirmation for editing profile

### Create New PLaylist & Add Songs

User creates new playlist '/playlists/new'
    #route to 'playlist_queues/new'
        #user selects playlist they want to save song to
        #gives list of all songs through collection_select  ****(possibly add search field for artist, then diplay songs)
        #user selects song
        #user submits selection
    #redirect_to @playlist

### Advanced - Create New Playlist + Song

#User creates new playlist '/playlists/new'
    #route to page that asks how they want to select 1st song - custom route? 'playlist_queues/first_selection'
        #gives list of all artists to choose from
        #artist#show - displays all songs and allows selction with "save" button
    #save button stores song data and reroutes to '/playlist_queues/new'
        #form gets auto-populated with song selected on previous page
        #user selects playlist they want to save song to
        #user submits selection
    #redirect_to @playlist


