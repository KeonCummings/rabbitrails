Rails.application.routes.draw do
  root to: "static_pages#index"
  get 'users/new'

  get 'sessions/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'index', to: 'static_pages#index'
  get 'updatemenu', to: 'static_pages#updatemenu'
  post 'updatemenu', to: 'static_pages#upload'
  get 'menu' , to: 'static_pages#menu'
  get 'authorize', to: 'static_pages#authorize_instagram'

  get 'signup', to: 'users#new', as: :signup
  post '/signup',  to: 'users#create'
  get 'login', to: 'sessions#new', as: :login
  resources :users

end
