class Admin::SchedulesController < ApplicationController
  before_action :set_schedule, only: [:show , :update, :destroy]
  before_action :set_movie, only: [:new]

  def index
    @movies = Movie.joins(:schedules).distinct
  end

  def show
  end

  def new
    @schedule = @movie.schedules.new
  end

  def create
    @schedule = Schedule.new(schedule_params)
    if @schedule.save
      redirect_to admin_movies_path, notice: 'スケジュールが作成されました。'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @schedule.update(schedule_params)
      redirect_to admin_schedule_path(@schedule), notice: 'スケジュールが更新されました。'
    else
      render :edit
    end
  end

  def destroy
    @schedule.destroy
    redirect_to admin_schedules_path, notice: 'スケジュールが削除されました。'
  end

  private

  def set_schedule
    @schedule = Schedule.find(params[:id])
  end

  def set_movie
    @movie = Movie.find(params[:movie_id])
  end

  def schedule_params
    params.require(:schedule).permit(:movie_id, :start_time, :end_time)
  end
end
