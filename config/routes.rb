Rails.application.routes.draw do
  root to: 'tasks#index'
  
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'tasks/index'
  get 'tasks/new'
  get 'tasks/show'
  get 'tasks/create'
  get 'tasks/edit'
  get 'tasks/update'
  get 'tasks/destroy'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'
  resources :users
  
  resources :tasks
end
