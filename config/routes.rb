# == Route Map
#
#          Prefix Verb   URI Pattern                     Controller#Action
#      home_index GET    /home(.:format)                 home#index
#                 POST   /home(.:format)                 home#create
#        new_home GET    /home/new(.:format)             home#new
#       edit_home GET    /home/:id/edit(.:format)        home#edit
#            home GET    /home/:id(.:format)             home#show
#                 PATCH  /home/:id(.:format)             home#update
#                 PUT    /home/:id(.:format)             home#update
#                 DELETE /home/:id(.:format)             home#destroy
#          places GET    /places(.:format)               places#index
#                 POST   /places(.:format)               places#create
#       new_place GET    /places/new(.:format)           places#new
#      edit_place GET    /places/:id/edit(.:format)      places#edit
#           place GET    /places/:id(.:format)           places#show
#                 PATCH  /places/:id(.:format)           places#update
#                 PUT    /places/:id(.:format)           places#update
#                 DELETE /places/:id(.:format)           places#destroy
#     attractions GET    /attractions(.:format)          attractions#index
#                 POST   /attractions(.:format)          attractions#create
#  new_attraction GET    /attractions/new(.:format)      attractions#new
# edit_attraction GET    /attractions/:id/edit(.:format) attractions#edit
#      attraction GET    /attractions/:id(.:format)      attractions#show
#                 PATCH  /attractions/:id(.:format)      attractions#update
#                 PUT    /attractions/:id(.:format)      attractions#update
#                 DELETE /attractions/:id(.:format)      attractions#destroy
#         regions GET    /regions(.:format)              regions#index
#                 POST   /regions(.:format)              regions#create
#      new_region GET    /regions/new(.:format)          regions#new
#     edit_region GET    /regions/:id/edit(.:format)     regions#edit
#          region GET    /regions/:id(.:format)          regions#show
#                 PATCH  /regions/:id(.:format)          regions#update
#                 PUT    /regions/:id(.:format)          regions#update
#                 DELETE /regions/:id(.:format)          regions#destroy
#      activities GET    /activities(.:format)           activities#index
#                 POST   /activities(.:format)           activities#create
#    new_activity GET    /activities/new(.:format)       activities#new
#   edit_activity GET    /activities/:id/edit(.:format)  activities#edit
#        activity GET    /activities/:id(.:format)       activities#show
#                 PATCH  /activities/:id(.:format)       activities#update
#                 PUT    /activities/:id(.:format)       activities#update
#                 DELETE /activities/:id(.:format)       activities#destroy
#     itineraries GET    /itineraries(.:format)          itineraries#index
#                 POST   /itineraries(.:format)          itineraries#create
#   new_itinerary GET    /itineraries/new(.:format)      itineraries#new
#  edit_itinerary GET    /itineraries/:id/edit(.:format) itineraries#edit
#       itinerary GET    /itineraries/:id(.:format)      itineraries#show
#                 PATCH  /itineraries/:id(.:format)      itineraries#update
#                 PUT    /itineraries/:id(.:format)      itineraries#update
#                 DELETE /itineraries/:id(.:format)      itineraries#destroy
#            root GET    /                               home#index
#                 GET    /photos/:id(.:format)           photos#show
#                 GET    /search/:search_item(.:format)  photos#show
#

Rails.application.routes.draw do

  
  devise_for :users
  


  resources :home
  resources :places
  resources :attractions
  resources :regions
  resources :activities
  resources :itineraries 

  root "home#index"
  get '/photos/:id', to: 'photos#show'
  get '/search/:search_item', to: 'photos#show'

end
