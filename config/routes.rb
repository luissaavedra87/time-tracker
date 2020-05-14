Rails.application.routes.draw do
  devise_for :users
  resources :groups
  
  get '/home', to: 'pages#home'


  authenticated :user do
    root to: 'groups#index', as: :authenticated_root
  end

  unauthenticated :user do
    root to: 'pages#home'
  end

end
