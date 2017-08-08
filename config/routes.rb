Rails.application.routes.draw do
  get '/locations/new', to: 'locations#new'
  post '/locations', to: 'locations#create', as: 'locations'
  get '/locations/:id', to: 'locations#show', as: 'location'
  get '/locations', to: 'locations#index'
end
