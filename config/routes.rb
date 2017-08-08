Rails.application.routes.draw do
  get '/locations/new', to: 'locations#new'
  post '/locations', to: 'locations#create', as: 'locations'
  get '/location/:id', to: 'locations#show', as: 'location'
end
