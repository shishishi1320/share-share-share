class HealthsController < ApplicationController
  def index
    @healths = Health.includes(:user)
  end 

  def new
    @health = Health.new
  end

  def create
    Health.create(health_params)
    redirect_to omikuji_index_path
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
    health.destroy
    redirect_to root_path
  end
  private
  def health_params
    params.require(:health).permit(:title, :content).merge(user_id: current_user.id)
  end
end
