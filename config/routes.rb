Rails.application.routes.draw do
  root 'welcome#index'

  get '/dashboard', to: 'users#show'
  get '/logout', to: 'sessions#destroy'
  resources :users, only:[:new, :create, :show]

end
