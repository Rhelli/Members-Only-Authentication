Rails.application.routes.draw do

  root  'members_only#home'
  get   '/signup', to: 'users#new'
  post  '/signup', to: 'users#create'

  resources :users
end
