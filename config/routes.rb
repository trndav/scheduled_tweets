Rails.application.routes.draw do
  get 'about-us', to: 'about#index', as: :about
  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'
  delete 'logout', to: 'sessions#destroy'

  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'

  get 'password', to: 'passwords#edit', as: :edit_password
  patch 'password', to: 'passwords#update'
 
  root 'main#index'
end
