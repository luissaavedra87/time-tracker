Rails.application.routes.draw do
  devise_for :users
  resources :groups
  
  get '/home', to: 'pages#home'

  root to: 'pages#home'
end
