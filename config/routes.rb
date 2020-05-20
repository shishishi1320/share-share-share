Rails.application.routes.draw do
  root to: 'posts#index'
  resources :posts, except: :index
  resources :health, only: [:index]
end
