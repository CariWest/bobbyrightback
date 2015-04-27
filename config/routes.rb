Rails.application.routes.draw do
  resources :blog

  get '/register' => 'users#new'
  post '/users' => 'users#create'

  get '/welcome/index'

  root 'welcome#index'
end
