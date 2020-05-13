Rails.application.routes.draw do
  devise_for :users
  resources :groups
  
  root to: 'groups#index'
end
