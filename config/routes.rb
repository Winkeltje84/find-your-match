Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users

  resources :students, only: [:new, :edit, :create, :update]

  namespace :admin do
      resources :users
  end
end
