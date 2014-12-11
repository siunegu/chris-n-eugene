# == Route Map
#
#                   Prefix Verb   URI Pattern                             Controller#Action
#               home_index GET    /home(.:format)                         home#index
#                          POST   /home(.:format)                         home#create
#                 new_home GET    /home/new(.:format)                     home#new
#                edit_home GET    /home/:id/edit(.:format)                home#edit
#                     home GET    /home/:id(.:format)                     home#show
#                          PATCH  /home/:id(.:format)                     home#update
#                          PUT    /home/:id(.:format)                     home#update
#                          DELETE /home/:id(.:format)                     home#destroy
#                   places GET    /places(.:format)                       places#index
#                          POST   /places(.:format)                       places#create
#                new_place GET    /places/new(.:format)                   places#new
#               edit_place GET    /places/:id/edit(.:format)              places#edit
#                    place GET    /places/:id(.:format)                   places#show
#                          PATCH  /places/:id(.:format)                   places#update
#                          PUT    /places/:id(.:format)                   places#update
#                          DELETE /places/:id(.:format)                   places#destroy
#              attractions GET    /attractions(.:format)                  attractions#index
#                          POST   /attractions(.:format)                  attractions#create
#           new_attraction GET    /attractions/new(.:format)              attractions#new
#          edit_attraction GET    /attractions/:id/edit(.:format)         attractions#edit
#               attraction GET    /attractions/:id(.:format)              attractions#show
#                          PATCH  /attractions/:id(.:format)              attractions#update
#                          PUT    /attractions/:id(.:format)              attractions#update
#                          DELETE /attractions/:id(.:format)              attractions#destroy
#                  regions GET    /regions(.:format)                      regions#index
#                          POST   /regions(.:format)                      regions#create
#               new_region GET    /regions/new(.:format)                  regions#new
#              edit_region GET    /regions/:id/edit(.:format)             regions#edit
#                   region GET    /regions/:id(.:format)                  regions#show
#                          PATCH  /regions/:id(.:format)                  regions#update
#                          PUT    /regions/:id(.:format)                  regions#update
#                          DELETE /regions/:id(.:format)                  regions#destroy
#               activities GET    /activities(.:format)                   activities#index
#                          POST   /activities(.:format)                   activities#create
#             new_activity GET    /activities/new(.:format)               activities#new
#            edit_activity GET    /activities/:id/edit(.:format)          activities#edit
#                 activity GET    /activities/:id(.:format)               activities#show
#                          PATCH  /activities/:id(.:format)               activities#update
#                          PUT    /activities/:id(.:format)               activities#update
#                          DELETE /activities/:id(.:format)               activities#destroy
#              itineraries GET    /itineraries(.:format)                  itineraries#index
#                          POST   /itineraries(.:format)                  itineraries#create
#            new_itinerary GET    /itineraries/new(.:format)              itineraries#new
#           edit_itinerary GET    /itineraries/:id/edit(.:format)         itineraries#edit
#                itinerary GET    /itineraries/:id(.:format)              itineraries#show
#                          PATCH  /itineraries/:id(.:format)              itineraries#update
#                          PUT    /itineraries/:id(.:format)              itineraries#update
#                          DELETE /itineraries/:id(.:format)              itineraries#destroy
#         new_user_session GET    /auth/login(.:format)                   devise/sessions#new
#             user_session POST   /auth/login(.:format)                   devise/sessions#create
#     destroy_user_session DELETE /auth/logout(.:format)                  devise/sessions#destroy
#            user_password POST   /auth/secret(.:format)                  devise/passwords#create
#        new_user_password GET    /auth/secret/new(.:format)              devise/passwords#new
#       edit_user_password GET    /auth/secret/edit(.:format)             devise/passwords#edit
#                          PATCH  /auth/secret(.:format)                  devise/passwords#update
#                          PUT    /auth/secret(.:format)                  devise/passwords#update
# cancel_user_registration GET    /auth/register/cancel(.:format)         devise/registrations#cancel
#        user_registration POST   /auth/register(.:format)                devise/registrations#create
#    new_user_registration GET    /auth/register/cmon_let_me_in(.:format) devise/registrations#new
#   edit_user_registration GET    /auth/register/edit(.:format)           devise/registrations#edit
#                          PATCH  /auth/register(.:format)                devise/registrations#update
#                          PUT    /auth/register(.:format)                devise/registrations#update
#                          DELETE /auth/register(.:format)                devise/registrations#destroy
#        user_confirmation POST   /auth/verification(.:format)            devise/confirmations#create
#    new_user_confirmation GET    /auth/verification/new(.:format)        devise/confirmations#new
#                          GET    /auth/verification(.:format)            devise/confirmations#show
#                     root GET    /                                       home#index
#                          GET    /photos/:id(.:format)                   photos#show
#                          GET    /search/:search_item(.:format)          photos#show
#

Rails.application.routes.draw do
   
  resources :home
  resources :places
  resources :attractions
  resources :regions
  resources :activities
  resources :itineraries 

  devise_for :users, path: "auth", path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
  
  root "home#index"
  get '/photos/:id', to: 'photos#show'
  get '/search/:search_item', to: 'photos#show'

end
