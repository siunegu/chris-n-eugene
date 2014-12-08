Rails.application.routes.draw do

  resources :home
  resources :places
  root "home#index"

end
