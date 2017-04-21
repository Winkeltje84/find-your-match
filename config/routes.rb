Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users

  resources :students

  namespace :admin do
      resources :users
      resources :day_matches
      resources :students
  end
end
