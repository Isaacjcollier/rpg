 Rails.application.routes.draw do

  root "parties#index"
  resources :characters
  resources :parties
  resources :character_parties, only: [:create, :new]

end
