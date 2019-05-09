Rails.application.routes.draw do
  root controller: :listings, action: :index
  
  resources :listings, only: [:new, :create] do
    resources :offers
  end

end
