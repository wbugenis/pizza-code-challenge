Rails.application.routes.draw do

  resources :restaurant_pizzas, only: [:index, :new, :create]
  resources :pizzas, only: [:index, :show]

  get '/restaurants', to: 'restaurants#index', as: 'restaurants'
  # get '/restaurants/new', to: 'restaurants#new', as: 'new_restaurant'
  # post '/restuarants', to: 'restaurants#create'
  get '/restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  # get 'restaurants/:id/edit', to: 'restaurants#edit', as: 'edit_restaurant'
  # patch '/restaurants/:id', to: 'restaurants#update'
  # delete 'restaurants/:id', to: 'restaurant#destroy'

  
end
