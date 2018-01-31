Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#index'
  post '/users/new' => 'users#create'
  post '/sessions' => 'sessions#create'
  get '/sessions/destroy' => 'sessions#destroy'
  get '/songs' => 'songs#index'
  post '/songs' => 'songs#create'
  post '/songs/addexisting' => 'songs#addexisting'
  get '/songs/:id' => 'songs#show'
  get '/users/:id' => 'users#show'
end
