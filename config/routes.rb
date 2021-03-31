Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :albums, :artists, :songs, :playlists, :playlist_queues, :users

  get '/playlist_queues/first_selection', to: 'playlist_queues#new'
end
