class DashboardsController < ApplicationController

  def index
    @own_movies = Movie.all

    if current_user.present?
        @own_favorited_movies = current_user.user_favorited_movies
    end

    if current_user.present?
        @favorite_genres = current_user.user_favorited_genres
    end

  end

end
