class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end
  def new
    @movie = Movie.new
  end

  def show
    @movie = Movie.find(params[:id])
  end

   # CREATE
   def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to lists_path
    end
  end
  # UPDATE

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      redirect_to root_path
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    if @movie.destroy
      redirect_to root_path
    end
  end


  private
  def movie_params
    params.require(:movie).permit(:title, :overview, :poster_url, :rating)
  end
end
