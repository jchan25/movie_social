class DashboardsController < ApplicationController

  def index
    @own_movies = Movie.all

    if current_user.present?
    @own_favorited_movies = current_user.user_favorited_movies
    else
    end

    if current_user.present?
    @favorite_genres = current_user.user_favorited_genres
    else
    end

  end

end
