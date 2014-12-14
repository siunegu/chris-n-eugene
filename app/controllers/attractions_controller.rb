class AttractionsController < ApplicationController
before_action :authorize_admin!, except: [:index, :show]
before_action :find_attraction, only: [:show, :edit, :destroy, :update]


  def index
    @attraction = Attraction.all 
  end

  def new
    @attraction = Attraction.new
  end

  def create
    @attraction = Attraction.new(attraction_params)
    if @attraction.save   
      redirect_to attraction_path(@attraction) 
    else 
      render :new
    end
  end

  def show
    @yelps = Yelp.client.search(@attraction.attraction_name)
  end

  def edit  
  end

  def update
    if @attraction.update(attraction_params)
      redirect_to @attraction         
    else
      render :edit
    end 
  end

  def destroy 
    @attraction.destroy
    redirect_to attractions_path
  end

  private
  def attraction_params
    params.require(:attraction).permit(:attraction_name, place_ids:[])
  end

  def find_attraction
    @attraction = Attraction.find params[:id]
  end

end
