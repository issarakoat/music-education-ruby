Rails.application.routes.draw do
  resources :enrollments
  devise_for :users
  resources :users, only: [:index, :edit, :show, :update]
  resources :courses do
    resources :lessons
    resources :enrollments, only: [:new, :create]
  end
  resources :users, only: [:index]
  root 'home#index'
  get 'home/index'
  get 'activity', to: 'home#activity'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
