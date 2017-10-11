Rails.application.routes.draw do
  root "home#index"
  get '/auth/github', as: 'github_login'
  get '/auth/github/callback', to: 'sessions#create'
  get '/:nickname', to: 'github_users#show', as: 'github_profile'
  delete '/logout', to: 'sessions#destroy', as: 'logout'
end
