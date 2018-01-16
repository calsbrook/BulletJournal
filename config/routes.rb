Rails.application.routes.draw do
  root 'users#index'
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :notes
  get '/login', to: 'sessions#new'
end
