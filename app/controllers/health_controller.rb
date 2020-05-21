class HealthsController < ApplicationController
  def index
    @healths = Health.all
  end 

  def new
    @health = Health.new
  end

  def create
    Health.create(Health_params)
    redirect_to root_path
  end

  def show
    @Health = Health.find(params[:id])
  end
  def edit
    @Health = Health.find(params[:id]) 
  end
  def update
    Health = Health.find(params[:id])
    Health.update(Health_params)
    redirect_to root_path
  end
  def destroy
    Health = Health.find(params[:id])
    Health.destroy(Health_params)
    redirect_to root_path
  end
  private
  def Health_params
    params.require(:Health).permit(:title, :content)
  end
end
