Rails.application.routes.draw do
  root to: 'posts#index'
  resources :posts, except: :index
  resources :omikuji, only: [:index]
end
