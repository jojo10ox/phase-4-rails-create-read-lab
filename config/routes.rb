Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  #GET /plants
  # get '/plants', to: 'plants#all'

  # #GET /plants/:id
  # get '/plants/:id', to: 'plants#index'

  #POST 
  resources :plants, only: [:index, :show, :create]
  
end

