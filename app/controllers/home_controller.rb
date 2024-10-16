class HomeController < ApplicationController
  def index
    @movies = Movie.all
    @series = Serie.all
    @documentary_films = DocumentaryFilm.all
  end
end
