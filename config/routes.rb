Rails.application.routes.draw do
  root to: 'toppages#index'
  
  get 'signup', to: 'users#new' #urlが'signupになる'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :blogs, only: %i[create,destroy]
  resources :users, only: %i[index show new create]
end
