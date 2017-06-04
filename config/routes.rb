Rails.application.routes.draw do

  get 'sessions/new'

  
  get 'static_pages/help'
  get 'static_pages/about'
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  get '/signup', to: 'users#new'
  resources :users
  resources :microposts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
 

end
