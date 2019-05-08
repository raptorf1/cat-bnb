Rails.application.routes.draw do
  devise_for :users
  root controller: :listings, action: :index
  resources :listings, only: [:new, :create]
  resources :profiles, only: [:new]
end
