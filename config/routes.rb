Rails.application.routes.draw do
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  post 'user/create'
  get '/signup' => 'user#new'
  get 'user/index'

  root 'user#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
