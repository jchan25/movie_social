class DashboardsController < ApplicationController

  def index
    @movies = Movie.all
    @user_favorited_movies = UserFavoritedMovie.all
    @events = Event.all
  end

end
