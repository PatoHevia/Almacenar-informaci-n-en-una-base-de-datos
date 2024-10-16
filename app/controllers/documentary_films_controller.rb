class DocumentaryFilmsController < ApplicationController
  def index
    @documentary_films = DocumentaryFilm.all
  end

  def new
    @documentary_film = DocumentaryFilm.new
  end

  def create
    @documentary_film = DocumentaryFilm.new(documentary_film_params)
    if @documentary_film.save
      redirect_to documentary_films_path, notice: "Documental creado exitosamente."
    else
      render :new
    end
  end

  def destroy
    @documentary_film = DocumentaryFilm.find(params[:id])
    @documentary_film.destroy
    redirect_to documentary_films_path, notice: "Documental eliminado exitosamente."
  end

  def show
    @documentary_film = DocumentaryFilm.find(params[:id])
  end

  private

  def documentary_film_params
    params.require(:documentary_film).permit(:name, :synopsis, :director)
  end
end
