class SchedulesController < ApplicationController

  before_action :search_schedule ,only: [:index,:search]

  def index
    @schedules = Schedule.all
  end

  def new
    @schedule = Schedule.new
  end

  def create
      @schedule = Schedule.new(schedule_params)
      if @schedule.save
        redirect_to root_path
      else      
        render :new
      end
  end


  def show
    @schedule = Schedule.find(params[:id])
  end
  
  def edit
    @schedule = Schedule.find(params[:id])
  end

  def update
    @schedule = Schedule.find(params[:id])
    if @schedule.update(schedule_params)
      redirect_to schedule_path
    else 
      render :edit
    end
  end

  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.delete
    redirect_to root_path
  end

  def search
    @results = @q.result

  end

  private
  def schedule_params
    params.require(:schedule).permit(:title,:detail,:schedule_id,:people_id,:budget_id, :image)
  end

  def search_schedule
    @q = Schedule.ransack(params[:q]) 
  end
end
