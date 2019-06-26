Rails.application.routes.draw do
  resources :tracks, except: [:show]

  root to: "tracks#index"
end
