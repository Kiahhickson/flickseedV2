Rails.application.routes.draw do
  resources :swipes
  resources :investors
  resources :founders

  root :to => 'founders#index'
  
  get '/login' => 'sessions#new'

  get '/investor_signup' => 'investors#new'

  get '/founder_signup' => 'founders#new'


  post '/investor_login' => 'sessions#investor_login'
  post '/founder_login' => 'sessions#founder_login'

  delete '/investor_logout' => 'sessions#investor_logout'
  delete '/founder_logout' => 'sessions#founder_logout'

  post '/founders/:id/like' => 'founders#like'

end
