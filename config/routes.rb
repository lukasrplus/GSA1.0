GSA10::Application.routes.draw do


  resources :users

  root 'pages#welcome'

  post "/sessions" => 'sessions#create'

  get "/logout" => 'sessions#logout'




end
