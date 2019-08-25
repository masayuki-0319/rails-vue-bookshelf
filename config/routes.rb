Rails.application.routes.draw do
  root to: 'home#index'

  namespace :api do
    resources :books, only: [:index, :show, :create, :update, :destroy]
    resources :users,    only: [:create]
    resources :sessions, only: [:create, :destroy]
  end
end
