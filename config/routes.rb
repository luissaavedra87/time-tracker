Rails.application.routes.draw do
  devise_for :users
  resources :groups
  
  get '/home', to: 'pages#home'
  get '/main', to: 'pages#main' 

  authenticated :user do
    root to: 'pages#main', as: :authenticated_root
  end

  unauthenticated :user do
    root to: 'pages#home'
  end

end
