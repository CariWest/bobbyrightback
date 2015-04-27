Rails.application.routes.draw do

  resources :blog

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get  '/logout' => 'sessions#destroy'

  get '/register' => 'users#new'
  post '/users' => 'users#create'

  get 'welcome/index'

  root 'welcome#index'
end
