Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index"

  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create, :destroy] do
    resources :posts, only: [:index, :new, :create, :show, :destroy]
  end
end