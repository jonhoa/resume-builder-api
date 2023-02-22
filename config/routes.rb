Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
get '/people/all' => 'people#index'
get '/people/:id' => 'people#show'
patch 'people/:id' => 'people#update'


get '/skill/all' => 'skills#index'
post '/skill/add' => 'skills#create'

end
