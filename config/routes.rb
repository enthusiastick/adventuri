Rails.application.routes.draw do
  root 'pages#index'
  resources :attempts, only: :create
  get 'posts', to: 'pages#posts'
end
