class SeriesController < ApplicationController
  def index
    @series = Serie.all
  end

  def new
    @serie = Serie.new
  end

  def create
    @serie = Serie.new(serie_params)
    if @serie.save
      redirect_to series_path, notice: "Serie creada exitosamente."
    else
      render :new
    end
  end

  def destroy
    @serie = Serie.find(params[:id])
    @serie.destroy
    redirect_to series_path, notice: "Serie eliminada exitosamente."
  end

  def show
    @serie = Serie.find(params[:id])
  end

  private

  def serie_params
    params.require(:serie).permit(:name, :synopsis, :director)
  end
end
