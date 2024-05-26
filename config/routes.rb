Rails.application.routes.draw do

  root "movies#index"
  resources :movies

  resources :sheets

  namespace :admin do
    resources :movies do
      resources :schedules, only: [:new, :edit]
    end
    resources :schedules, only: [:index, :show, :create, :update, :destroy]
  end
end
