class ActivitiesController < ApplicationController


# before_action :authorize_admin!, except: [:index, :show]
  
 before_action :find_activities, only: [:show, :edit, :destroy, :update]


  def index
    @activity = Activity.all 
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    if @activity.save 
      
      redirect_to activity_path(@activity) 
    else 
      render :new
    end
  end

  def show


    
  end

  def edit
    
  end


  def update
    
    if @activity.update(activity_params)
      redirect_to @activity         
    else
      render :edit
    end 
  end


  def destroy
    
    @activity.destroy
    redirect_to activities_path
  end

  private
  def activity_params
    params.require(:activity).permit(:name,
                                 :description, 
                                 :cost                  
                                )
  end

    def find_attraction
    @activity = Activity.find params[:id]
  end

end
