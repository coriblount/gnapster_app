Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'new/create'
  get 'new/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/signup' => 'users#new'

end
