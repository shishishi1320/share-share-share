class HealthsController < ApplicationController
  def index
    @healths = Health.all
  end 

  def new
    @health = Health.new
  end

  def create
    Health.create(health_params)
    redirect_to health_path
  end

  def show
    @health = Health.find(params[:id])
  end
  def edit
    @health = Health.find(params[:id]) 
  end

  def update
    health = Health.find(params[:id])
    health.update(health_params)
    redirect_to root_path
  end
  def destroy
    health = Health.find(params[:id])
    hhealth.destroy(health_params)
    redirect_to root_path
  end
  private
  def Health_params
    params.require(:health).permit(:title, :content)
  end
end
