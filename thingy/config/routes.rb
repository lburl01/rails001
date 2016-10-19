Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get '/users/home' => 'users#show'
  resources :users

  root "static_pages#index"
end
