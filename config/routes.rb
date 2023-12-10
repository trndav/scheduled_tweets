Rails.application.routes.draw do
  get 'about-us', to: 'about#index', as: :about
  # get '/', to: 'main#index' is same as
  root 'main#index'
end
