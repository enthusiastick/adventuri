Rails.application.routes.draw do
  root 'pages#index'
  resources :attempts, only: :create
  resources :posts
end
