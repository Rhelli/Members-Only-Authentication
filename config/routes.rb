Rails.application.routes.draw do

  root 'members_only#home'
  get '/signup', to: 'users#new'

end
