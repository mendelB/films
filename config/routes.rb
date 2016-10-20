Rails.application.routes.draw do
  resources :actors
  resources :directors do 
    resources :movies, shallow: true
  end
  get '/movies', to: 'movies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
