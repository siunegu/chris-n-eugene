Rails.application.routes.draw do
  
  resources :home
  resources :places
  resources :attractions
  resources :regions
  resources :activities 

  root "home#index"
end
