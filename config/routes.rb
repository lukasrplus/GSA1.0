GSA10::Application.routes.draw do


  # USERS CONTROLLER
  resources :users


  # PAGES CONTROLLER
  root 'pages#welcome'


  # SESSIONS CONTROLLER
  post "/sessions" => 'sessions#create'
  get "/logout" => 'sessions#logout'


  # GAMES CONTROLLER
  get "/games/new" => 'games#new', as: 'new_game'
  post "/games" => 'games#create'




end
