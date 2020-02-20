Rails.application.routes.draw do
  resources :tickets
  resources :projects
  resources :users

  post '/login', to: 'users#login'
  get '/persist', to: 'users#persist'
end
