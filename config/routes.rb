Rails.application.routes.draw do
  get 'users/new'

  get 'sessions/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'index', to: 'static_pages#index'

  get 'signup', to: 'users#new', as: :signup
  post '/signup',  to: 'users#create'
  get 'login', to: 'sessions#new', as: :login
  resources :users

end
