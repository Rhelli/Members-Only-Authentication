Rails.application.routes.draw do

  
  root   'members_only#home'
  get    '/signup', to:  'users#new'
  post   '/signup', to:  'users#create'
  get    '/login',  to:  'sessions#new'
  post   '/login',  to:  'session#create'
  delete '/logout', to:  'session#destroy'

  resources :users
end
