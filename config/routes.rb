Rails.application.routes.draw do
  root 'pages#index'
  resources :attempts, only: [:create, :index]
  resources :posts, only: [:create, :new, :index, :show, :update]

  get '/auth/:provider/callback', to: 'sessions#create'
  get '/signout', to: 'sessions#destroy', as: :signout
end
