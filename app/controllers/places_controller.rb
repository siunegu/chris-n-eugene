class PlacesController < ApplicationController
  # before_action :authorize_admin!, except: [:index, :show]
  before_action :find_place, only: [:show, :edit, :destroy, :update]

  def index
    @places = Place.all 
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    if @place.save      
      redirect_to place_path(@place) 
    else 
      render :new
    end
  end

  def show
		FlickRaw.api_key="e74c109a55b31224ff0e81e87f95ff7f"
		FlickRaw.shared_secret="df20bd30ceec1a10"
		flickr_photos = flickr.photos.search(text: @place.name, region: 6, is_getty: true, per_page: 10)
		@photos = flickr_photos.map do |photo|
			FlickRaw.url(photo)
		end 
  end

  def edit  
  end

  def update
    if @place.update(place_params)
      redirect_to @place         
    else
      render :edit
    end 
  end

  def destroy
    @place.destroy
    redirect_to places_path
  end

  private
  def place_params
    params.require(:place).permit(:name,
                                 :country, 
                                 :description,
                                 :languages,
                                 :timezone,
                                 :region_id
                                )
  end

  def find_place
    @place = Place.find params[:id]
  end

end
	