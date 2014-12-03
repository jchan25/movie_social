class UserFavoritedMoviesController < ApplicationController
  def index
    @user_favorited_movies = UserFavoritedMovie.all
  end

  def show
    @user_favorited_movie = UserFavoritedMovie.find(params[:id])
  end

  def new
    @user_favorited_movie = UserFavoritedMovie.new
  end

  def create
    @user_favorited_movie = UserFavoritedMovie.new
    @user_favorited_movie.user_ID = params[:user_ID]
    @user_favorited_movie.movie_ID = params[:movie_ID]

    if @user_favorited_movie.save
      redirect_to "/", :notice => "User favorited movie created successfully."
    else
      redirect_to "/", :notice => "User already favorited movie."
    end
  end

  def edit
    @user_favorited_movie = UserFavoritedMovie.find(params[:id])
  end

  def update
    @user_favorited_movie = UserFavoritedMovie.find(params[:id])

    @user_favorited_movie.user_ID = params[:user_ID]
    @user_favorited_movie.movie_ID = params[:movie_ID]

    if @user_favorited_movie.save
      redirect_to "/", :notice => "User favorited movie updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @user_favorited_movie = UserFavoritedMovie.find(params[:id])

    @user_favorited_movie.destroy

    redirect_to "/", :notice => "User favorited movie deleted."
  end
end
