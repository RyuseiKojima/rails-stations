Rails.application.routes.draw do
  root "movies#index"
  resources :movies

  resources :sheets

  namespace :admin do
    resources :movies
  end
end
