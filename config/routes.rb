Amdb::Application.routes.draw do
  root :to => 'Movies#index'

  get '/auth/:provider/callback', to: 'sessions#create'
  post '/auth/:provider/callback', to: 'sessions#create'

  get '/session/new' => 'Sessions#new', :as => 'new_session'
  post '/sessions' => 'Sessions#create', :as => 'sessions'
  delete '/sessions' => 'Sessions#destroy'

  resources :votes
  resources :users
  resources :roles
  resources :actors
  resources :movies
  resources :directors do
    resources :movies
  end

  # get "/directors/:director_id/movies" => 'movies#index'
  # get '/directors/:director_id/movies/new' => 'movies#new'
  # post '/directors/:director_id/movies' => 'movies#create'
end









