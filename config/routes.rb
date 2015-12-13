Rails.application.routes.draw do
  root 'users#show'
  get 'profile/:id' => 'users#show', as: :user
  get 'login' => 'sessions#new', as: :login
  get 'signup' => 'users#new', as: :signup
  post 'login' => 'sessions#create'
  post 'signup' => 'users#create'
  delete 'logout' => 'sessions#destroy', as: :logout
  get 'admin_panel' => 'users#all', as: :admin_panel
  delete 'destroy_user' => 'users#destroy', as: :destroy_user
  get 'profile/:id/update' => 'users#edit' , as: :edit
  patch 'profile/:id' => 'users#update', as: :update
end
