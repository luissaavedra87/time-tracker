Rails.application.routes.draw do
  resources :clocks
  devise_for :users
  resources :groups do
    resources :clocks
  end
  
  get '/home', to: 'pages#home'
  get '/main', to: 'pages#main'
  get '/ehour', to: 'clocks#ehour'

  authenticated :user do
    root to: 'pages#main', as: :authenticated_root
  end

  unauthenticated :user do
    root to: 'pages#home'
  end

end
