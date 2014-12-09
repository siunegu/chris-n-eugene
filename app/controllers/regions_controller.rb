class RegionsController < ApplicationController

before_action :find_regions, only: [:show, :edit, :destroy, :update]

def index
	@regions = Region.all
end

def show
end

def new
	@region = Region.new
end

def create
	@region = Region.new(region_params)
	if @region.save
		redirect_to regions_path
	else
		render 'new'
	end
end

def edit
end

def update
	if @region.update(region_params)
		redirect_to @region
	else
		render 'edit'
	end
end

def destroy
	@region.destroy
	redirect_to regions_path
end

private
def find_regions
	@region = Region.find params[:id]
end

def region_params
	params.require(:region).permit(:name)
end

end

