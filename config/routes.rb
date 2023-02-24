Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
get '/people/all' => 'people#index'
get '/people/:id' => 'people#show'
patch '/people/:id' => 'people#update'
post '/people/add' => 'people#create'


get '/skill/all' => 'skills#index'
get '/skill/:id' => 'skills#show'
post '/skill/add' => 'skills#create'


get '/education/all' => 'educations#index'
get '/education/:id' => 'educations#show'
patch '/education/edit/:id' => 'educations#edit'
post '/education/add' => 'educations#create'


get '/experiences/all' => 'experiences#index'
get '/experiences/:id' => 'experiences#show'
patch '/experiences/edit/:id' => 'experiences#edit'
post '/experiences/add' => 'experiences#create'

end
