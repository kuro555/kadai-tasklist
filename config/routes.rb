Rails.application.routes.draw do
  get 'toppages/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
    root to: 'toppages#index'
    
    resources :tasks
    resources :users, only:[:show,:new, :create]
end
