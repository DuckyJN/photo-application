Rails.application.routes.draw do
  root 'user#index'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  post 'user/create'
  get '/signup' => 'user#new'
  get 'user/index'
  resources :photos
  resources :galleries

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
