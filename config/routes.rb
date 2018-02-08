Rails.application.routes.draw do
  get 'events/new'

  get 'events/create'

  get 'events/show'

  get 'events/destroy'

  get 'sessions/new'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'
  get 'users/index'
  get 'reveal', to: 'events#new'
  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#new'
  delete 'logout', to: 'sessions#destroy'
  post 'login', to: 'sessions#create'
  post 'signup', to: 'users#create'
  get 'signup', to: 'users#new'
  post 'events', to: 'events#create'
end
