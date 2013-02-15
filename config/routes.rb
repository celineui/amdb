Amdb::Application.routes.draw do
  root :to => 'Movies#index'

  get '/session/new' => 'Sessions#new', :as => 'new_session'
  post '/sessions' => 'Sessions#create', :as => 'sessions'
  delete '/sessions' => 'Sessions#destroy'

  resources :votes
  resources :users
  resources :roles
  resources :actors
  resources :movies
  resources :directors
end
