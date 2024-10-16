class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to movies_path, notice: "Película creada exitosamente"
    else
      render :new
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to movies_path, notice: "Película eliminada exitosamente."
  end

  def show
    @movie = Movie.find(params[:id])
  end

  private

  def movie_params
    params.require(:movie).permit(:name, :synopsis, :director)
  end
end
