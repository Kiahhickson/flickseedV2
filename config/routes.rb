Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :founders
  
  get 'signup'  => 'founders#new'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  # delete '/login' => 'sessions#destroy'


end
