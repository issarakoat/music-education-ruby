Rails.application.routes.draw do
  resources :lessons
  devise_for :users
  resources :users, only: [:index, :edit, :show, :update]
  resources :courses
  resources :users, only: [:index]
  root 'home#index'
  get 'home/index'
  get 'home/activity'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
