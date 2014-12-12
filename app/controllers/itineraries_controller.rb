class ItinerariesController < ApplicationController
before_action :authorize_admin!, except: [:index, :show]	
before_action :find_itinerary, only: [:show, :edit, :update, :destroy]
	def index
		@itineraries = Itinerary.all
	end	

	def show
		FlickRaw.api_key="e74c109a55b31224ff0e81e87f95ff7f"
		FlickRaw.shared_secret="df20bd30ceec1a10"
		flickr_photos = flickr.photos.search(text: @place.name, region: 6, is_getty: true, per_page: 50, privacy_filter: 1, extras: 'url_m')
    @photos = flickr_photos.map do |p|
      p["url_m"]
    end		
	end

	def new
		@itinerary = Itinerary.new
	end

	def create
		@itinerary = Itinerary.new(itinerary_params)
		if @itinerary.save
			redirect_to itineraries_path
		else
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
		@itinerary.delete
		redirect_to itineraries_path(@itinerary)
	end

	private #Everything below this is private

	def find_itinerary
	#Below: if current user is an admin, show all of the 
	# entries, otherwise only find the current users' playlists.		
		# if current_user.admin?
		# 	@itinerary = Itinerary.find params[:id]
		# else
		# 	@itinerary = current_user.itineraries.find(params[:id])
		# end		
			
		@itinerary = Itinerary.find params[:id]		
	end

	def itinerary_params
  	params.require(:itinerary).permit(
  	 :name
	 	 )		
	end

end
