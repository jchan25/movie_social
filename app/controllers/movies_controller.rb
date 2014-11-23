class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new
    @movie.name = params[:name]
    @movie.image_url = params[:image_url]
    @movie.director = params[:director]
    @movie.actors = params[:actors]
    @movie.genre_id = params[:genre_id]
    @movie.synopsis = params[:synopsis]
    @movie.duration = params[:duration]
    @movie.release_date = params[:release_date]

    if @movie.save
      redirect_to "/movies", :notice => "Movie created successfully."
    else
      render 'new'
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])

    @movie.name = params[:name]
    @movie.image_url = params[:image_url]
    @movie.director = params[:director]
    @movie.actors = params[:actors]
    @movie.genre_id = params[:genre_id]
    @movie.synopsis = params[:synopsis]
    @movie.duration = params[:duration]
    @movie.release_date = params[:release_date]

    if @movie.save
      redirect_to "/movies", :notice => "Movie updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @movie = Movie.find(params[:id])

    @movie.destroy

    redirect_to "/movies", :notice => "Movie deleted."
  end
end
