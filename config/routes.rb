Rails.application.routes.draw do
  root 'users#index'
  get '/notes/week', to: 'notes#week'
  get '/notes/month', to: 'notes#month'
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :notes
  get '/login', to: 'sessions#new'
end
