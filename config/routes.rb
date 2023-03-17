Rails.application.routes.draw do
  devise_for :users
  resources :questions
  resources :answers
  root "questions#index"
  get 'my_friends', to:'users#my_friends'
  resources :users, only: [:show]
  resources :friendships , only: [:create,:destroy]
end
