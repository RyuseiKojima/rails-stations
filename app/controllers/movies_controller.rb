class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    if params[:keyword].present?
      @movies = @movies.where('name LIKE ? OR description LIKE ?', "%#{params[:keyword]}%", "%#{params[:keyword]}%")
    end
    if params[:is_showing].present?
      @movies = @movies.where(is_showing: params[:is_showing] == 'true')
    end
  end

  # def is_showing
  #   @movies = Movie.where(is_showing: true)
  #   render :index
  # end

  # def not_showing
  #   @movies = Movie.where(is_showing: false)
  #   render :index
  # end

  # def search
  #   @movies = Movie.all
  #     if params[:keyword].present?
  #       @movies = @movies.where('name LIKE ? OR description LIKE ?', "%#{params[:keyword]}%", "%#{params[:keyword]}%")
  #     end
  #     if params[:is_showing].present?
  #       @movies = @movies.where(is_showing: params[:is_showing] == 'true')
  #     end
  #   render :index
  # end

  def show
    @movie = Movie.find(params[:id])
    @schedules = @movie.schedules
  end
end
