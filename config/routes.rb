GSA10::Application.routes.draw do


  # USERS CONTROLLER
  resources :users


  # PAGES CONTROLLER
  root 'pages#welcome'


  # SESSIONS CONTROLLER
  post "/sessions" => 'sessions#create'
  get "/logout" => 'sessions#logout'


  # GAMES CONTROLLER
  get "games/index" => 'games#index', as: 'games'

  get "/games/new" => 'games#new', as: 'new_game'
  post "/games" => 'games#create', as: 'create_game'

  get "game/:id" => 'games#show', as: 'game'


  # INVITATIONS CONTROLLER
  get "invitations/new" => 'invitations#new', as: 'new_invitation'
  post "invitations" => 'invitations#create'


  get "invitations/add_invitation" => 'invitations#add_invitation'

  get "invitations/:id" => 'invitations#show', as: 'invitation'




end
