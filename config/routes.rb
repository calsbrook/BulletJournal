Rails.application.routes.draw do
  root 'users#index'
  get '/notes/week', to: 'notes#week'
  get '/notes/month', to: 'notes#month'
  get '/habits/month', to: 'habits#month'
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :notes
  resources :habits
  get '/login', to: 'sessions#new'
end
