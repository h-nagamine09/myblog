Rails.application.routes.draw do
  root to: 'toppages#index'

  get 'signup', to: 'users#new' #urlが'signupになる'

  resources :users, only: %i[index show new create]
end
