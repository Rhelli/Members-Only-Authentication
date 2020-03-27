Rails.application.routes.draw do

  root 'members_only#home'
  get '/about', to: 'members_only#about'

end
