Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :posts, except: :index
  resources :omikuji, only: [:index]
  resources :healths
  resources :users, only: :show
end
