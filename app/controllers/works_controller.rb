class WorksController < ApplicationController
  def index
    @works = Work.includes(:user)
  end 

  def new
    @work = Work.new
  end

  def create
    Work.create(work_params)
    redirect_to omikuji_index_path
  end

  def show
    @work = Work.find(params[:id])
  end
  def edit
    @work = Work.find(params[:id]) 
  end

  def update
    work = Work.find(params[:id])
    work.update(work_params)
    redirect_to root_path
  end
  
  def destroy
    work = Work.find(params[:id])
    work.destroy
    redirect_to root_path
  end
  private
  def work_params
    params.require(:work).permit(:title, :content).merge(user_id: current_user.id)
  end
end
