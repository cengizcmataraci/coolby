Rails.application.routes.draw do
  get 'reviews/index'
  devise_for :users
  root 'home#index'
end
