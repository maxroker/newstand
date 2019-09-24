Rails.application.routes.draw do

  resources :articles
  root 'articles#index'
  get '/signup' => 'users#new'
  resources :users
  get '/login' => 'sessions#new', as: :login
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy', as: :logout

  # get '/profile' => 'users#show'
  # get '/profile' => 'users#edit'
  get '/profile' => 'users#edit', as: :edit
  post '/profile' => 'users#update', as: :update

  # get 'users/new'
  # get 'sessions/new'
  # get 'articles/index'
  # get 'articles/show'
  # get 'articles/new'
  # get 'articles/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
