Rails.application.routes.draw do
  get 'reviews/index'
  get 'reviews/new'
  devise_for :users
  root 'home#index'
  resources :reviews
end
