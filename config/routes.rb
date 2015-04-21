Rails.application.routes.draw do
  root 'posts#index'
  resources :attempts, only: [:create, :index]
  resources :outgoings, only: [:create, :new]
  resources :posts, only: [:create, :new, :index, :show, :update]

  get '/auth/:provider/callback', to: 'sessions#create'
  get '/signout', to: 'sessions#destroy', as: :signout
end
