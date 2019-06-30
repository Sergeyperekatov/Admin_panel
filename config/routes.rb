Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :admins
  devise_for :users
  resources :tracks, except: [:show]

  root to: "home#index"
  get "home/index"
end
