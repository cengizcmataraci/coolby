Rails.application.routes.draw do
  get 'user/index'
  get 'user/show'
  get 'reviews/index'
  get 'reviews/new'
  devise_for :users
  root 'home#index'
  resources :reviews do
    resources :comments
  end
  resources :user
end
