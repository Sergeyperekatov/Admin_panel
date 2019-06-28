Rails.application.routes.draw do
  resources :tracks, except: [:show]

  root to: "home#index"
  get "home/index"
end
