Rails.application.routes.draw do
  root 'pages#index'
  post '/', to: 'pages#access'
  get 'posts', to: 'pages#posts'
end
