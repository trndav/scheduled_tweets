Rails.application.routes.draw do
  get 'about-us', to: 'about#index', as: :about
  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'
  delete 'logout', to: 'sessions#destroy'

  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'

  get 'password', to: 'passwords#edit', as: :edit_password
  patch 'password', to: 'passwords#update'

  get "password/reset", to: "password_resets#new"
  post "password/reset", to: "password_resets#create" # Sends email(?)
  get "password/reset/edit", to: "password_resets#edit"
  patch "password/reset/edit", to: "password_resets#update"
  
  get '/auth/twitter2/callback', to: 'sessions#create'
 
  root 'main#index'
end
