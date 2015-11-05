Rails.application.routes.draw do
  resources :deathmatches
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
