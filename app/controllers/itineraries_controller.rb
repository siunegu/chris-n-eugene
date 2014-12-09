class ItinerariesController < ApplicationController
before_action :find_itinerary, only: [:edit, :update, :destroy]
	def index
		@itineraries = Itinerary.all
	end	

	def show
		@itinerary = Itinerary.find params[:id]
	end

	def new
		@itinerary = Itinerary.new
	end

	def create
		#'.new' is a specific method only available to class objects.
		@itinerary = Itinerary.new(itinerary_params)
		#Below: Building new mixtape, scoped to the current users mixtapes
		#setting the user id, accessing their itinerarys,
		#and building a new itinerary to that in concordance with the params.
		@itinerary = current_user.itineraries.build(itinerary_params)

		if @itinerary.save
			redirect_to @itinerary
		elser
			render 'new'
		end
	end

	def edit
		@itinerary = Itinerary.find params[:id]
	end

	def update
		@itinerary = Itinerary.find params[:id]
		if @itinerary.update(itinerary_params)
			redirect_to @itinerary
		else
			render 'edit'
		end	
	end

	def destroy
		@itinerary = Itinerary.find params[:id]
		if @itinerary.delete
		redirect_to itineraries_path
		end
	end

	private #Everything below this is private

	def find_playlist
	#Below: if current user is an admin, show all of the 
	# entries, otherwise only find the current users' playlists.		
		if current_user.admin?
			@itinerary = Itinerary.find params[:id]
		else
			@itinerary = current_user.itineraries.find(params[:id])
		end		
	end

	def itinerary_params
  	params.require(:itinerary).permit(
  	 :name
	 	 )		
	end

end
