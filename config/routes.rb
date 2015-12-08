Rails.application.routes.draw do
  root 'users#show'
  get 'profile' => 'users#show'
  get 'login' => 'sessions#new', as: :login
  get 'signup' => 'users#new', as: :signup
  post 'login' => 'sessions#create'
  post 'signup' => 'users#create'
  delete 'logout' => 'sessions#destroy', as: :logout
  get ':id' => 'infopage#show'
  get 'users/all' => 'users#all'
end
