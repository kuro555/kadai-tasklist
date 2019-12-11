Rails.application.routes.draw do
    get 'users/new'
    get 'users/create'
    root to: 'toppages#index'
    
    resources :tasks
    resources :users, only:[:new, :create]
end
